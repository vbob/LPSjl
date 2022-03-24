using Pkg
Pkg.activate(".")

using LPSjl.BayesianNetworks
using LPSjl.ParameterLearning
using SparseArrays
using DataFrames

"""
    Darwiche, A. 11a - Learning Parameters: Complete Data
"""

node_H = DiscreteNode("H", ["T", "F"])

node_S = DiscreteNode("S", ["T", "F"])
add_parent!(node_S, node_H)

node_E = DiscreteNode("E", ["T", "F"])
add_parent!(node_E, node_H)

df = DataFrame("H" => ["T", "T", "F", "F", "T", "T", "F", "T", "T", "F", "T", "T", "T", "T", "T", "T"],
               "S" => ["F", "F", "T", "F", "F", "F", "F", "F", "F", "F", "F", "T", "F", "T", "F", "F"],
               "E" => ["T", "T", "F", "T", "F", "T", "F", "T", "T", "T", "T", "T", "T", "T", "T", "T"])

estimator = MaximumLikelihoodEstimator(df, BayesianNetwork([node_H, node_S, node_E], [(node_H, node_S), (node_H, node_E)]))
estimate(estimator)