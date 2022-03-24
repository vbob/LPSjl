module ParameterLearning

using DataFrames
using LPSjl.BayesianNetworks
include("BaseParameterLearning.jl")

"""
    calculateEmpiricalDistribution(::AbstractDataFrame)

Returns the Empirical Distribution of a dataFrame
"""
function calculateEmpiricalDistribution(df::AbstractDataFrame)
    combinedDf = combine(groupby(df, names(df)), nrow => :p)
    combinedDf.p = combinedDf.p / size(df)[1]    

    return sort(combinedDf, names(df))
end

export
    calculateEmpiricalDistribution,
    MaximumLikelihoodEstimator, 
    estimate

end  # module ParameterLearning
