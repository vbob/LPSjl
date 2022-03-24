
"""
    MaximumLikelihoodEstimator

# Fields
- `network::BayesianNetwork`: the network to estimate
- `data::DataFrame`: the dataset
"""
struct MaximumLikelihoodEstimator
    data::DataFrame
    network::BayesianNetwork{DiscreteNode}
end

function estimate(estimator::MaximumLikelihoodEstimator)
    print(estimator.network.V)
end