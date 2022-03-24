module BayesianNetworks

using SparseArrays

""" 
    AbstractNode

Supertype for all types of `Node`
""" 
abstract type AbstractNode end

"""
    DiscreteNode <: AbstractNode

# Fields
- `name::String`: the node name
- `parents::Vector{DiscreteNode}`: the parents of the node
- `categories::Vector{String}`: the categories of the node
- `parameters::SparseMatrixCSC`: the parameters of the node

# Constructors
- `DiscreteNode(name::String, categories::Vector{String})`
"""
mutable struct DiscreteNode <: AbstractNode
    name::String
    parents::Vector{DiscreteNode}

    categories::Vector{String}
    parameters::SparseMatrixCSC
end
DiscreteNode(name::String, categories::Vector) =
    DiscreteNode(name, [], categories, sparse([[];], [[];], [[];]))

"""
    name(node::DiscreteNode) 

Returns the name of the node
"""
name(node::DiscreteNode) = node.name

"""
    parents(node::DiscreteNode)

Returns the parents of the node
"""
parents(node::DiscreteNode) = node.parents

"""
    categories(node::DiscreteNode)

Returns the categories of the node
"""
categories(node::DiscreteNode) = node.categories

"""
    parameters(node::DiscreteNode)

Returns the CPT of the node
"""
parameters(node::DiscreteNode) = node.parameters

"""
    add_parent!(node::DiscreteNode, parent::DiscreteNode)

Add a parent to the node
"""
add_parent!(node::DiscreteNode, parent::DiscreteNode) =
    append!(node.parents, [parent])

"""
    set_parameters(node::DiscreteNode, parameter::SparseMatrixCSC)

Add a parameter to the node
"""
set_parameters!(node::DiscreteNode, parameters::SparseMatrixCSC) =
    node.parameters = parameters

"""
    BayesianNetwork{T}

# Fields
- `V::Vector{T}`: The array of nodes
- `E::Vector{Tuple{T}}`: The array of edges

# Reference
- Neapolitan, R. Learning Bayesian Networks, Ch. 1, p. 40
"""
mutable struct BayesianNetwork{T}
    V::Vector{T} 
    E::Vector{Tuple{T, T}}
end

export 
    AbstractNode,
    DiscreteNode,
    name,
    parents,
    categories,
    parameters,
    add_parent!,
    set_parameters!,

    BayesianNetwork

end # module    