module ContinuousInference

using LPSjl

"""
```julia
initial_net(bayesianNetwork::BayesianNetwork, A::Array{String}, a::Array{Int})
```
# Arguments
- `bayesianNetwork`: A singly-connected BN(G, P) containing continuous variables, where G=(V, E)
- `A`: a subset Α ⊆ V
- `a`: a set of values for A

# Returns
- The BN(G, P) updated according to the values in Α. All expectations and variances, including those in messages, are considered part of the network.

# References
- Neapolitan, p. 187, Algorithm 4.1 - Inference With Continuous Variables
"""
function initial_net(bayesianNetwork::BayesianNetwork, A::Array{String}, a::Array{Int})

end

function update_tree(bayesianNetwork::BayesianNetwork, A::Array{String}, a::Array{String},
                    V::String, v::Int)

end

function send_lambda_message(Y::String, X::String)

end

function send_pi_message(Z::String, X::String)

end

export initial_net

end # module