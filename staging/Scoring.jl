# TODO Cleanup
struct Variable
	label::String
	parents::Vector{String}
	cardinality::Integer
	sample_size::Integer
	states_possible::Integer
	states_missing::Integer
	states_parents::Integer
	cpt::DataFrame
	
	function Variable(label::String, dag::DAG, data::DataFrame)
		#: sample size
		sample_size = size(data)[1]
		parents = inneighbors(dag, label)
		#: conditional state counting
		cpt = combine(groupby(data, [parents; label]), nrow => :count)
		transform!(groupby(cpt, parents), :count => sum => :total)
		#: extracting marginal states
		states = [unique(cpt[!, name]) for name in [parents; label]]
		#: cardinality of the variable
		cardinality = size(last(states))[1]
		#: number of possible conditional states
		states_possible = prod(size(state)[1] for state in states)
		#: number missing states
		states_missing = states_possible - size(cpt)[1]
		#: number of parents states
		states_parents = states_possible/cardinality
		return new(label, parents, cardinality, sample_size, states_possible, states_missing, states_parents, cpt)
	end
end

gammaln(x) = logabsgamma(x)[1]

function score_bdeu(variables::Vector{Variable}, equivalent_sample_size=10)
	score::Float64 = 0.0
	for variable in variables
		alpha = equivalent_sample_size / variable.states_parents
		beta = equivalent_sample_size / variable.states_possible
		log_gamma_counts_beta = sum(gammaln.(variable.cpt.count .+ beta)) + variable.states_missing * gammaln(beta)
		state_counts_agg = groupby(variable.cpt, variable.parents)
		log_gamma_cond = sum(gammaln.([sum(x.count) + alpha for x in state_counts_agg])) + (variable.states_parents - length(state_counts_agg)) * gammaln(alpha)
		local_score::Float64 = log_gamma_counts_beta - log_gamma_cond + variable.states_parents * gammaln(alpha) - variable.states_possible * gammaln(beta)
		score += local_score
	end
	return score
end

function score_bic(variables::Vector{Variable})
	score::Float64 = 0.0
	for variable in variables
		log_likelihoods = log.(variable.cpt.count)
		log_conditionals = log.(variable.cpt.total)
		log_likelihoods -= log_conditionals
		log_likelihoods .*= variable.cpt.count
		local_score::Float64 = sum(log_likelihoods)
		local_score -= 0.5 * log(variable.sample_size) * variable.states_parents * (variable.cardinality - 1)
		score += local_score
	end
	return score
end
