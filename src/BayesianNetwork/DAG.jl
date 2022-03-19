"""
    DAG

An Acyclic DiGraph

The edges and nodes are stored in LightGraphs.DiGraph but checks
are are made to prevent loops.

# Constructors
```julia
    DAG()
    DAG(digraph::DiGraph)
    DAG(nodes::Array{String})
    DAG(edges::Array{Tuple{String}})
```

# Keyword arguments

- `digraph`: an existing LightGraphs.DiGraph
- `nodes` : array of nodes of the graph
- `edges` : array of edges of the graph

"""
struct DAG
    digraph::DiGraph

    function DAG(digraph::DiGraph)
        is_dag(digraph)
        return new(digraph)
    end

    function DAG(nodes::Array{String})
        digraph = DiGraph(0)
        self = DAG(digraph)

        for node in nodes
            add_node!(self, node)
        end

        return self
    end

    function DAG(edges::Array{Tuple{String}})
        digraph = DiGraph(0)
        self = DAG(digraph)

        for (node₁, node₂) in edges
            add_edge!(self, node₁, node₂)
        end

        return self
    end
end

"""
    add_edge!(dag::DAG, node₁::String, node₂::String)

Add an edge between two nodes to the DAG, creating the non-existent nodes
"""
function add_edge!(dag::DAG, node₁::String, node₂::String)

end

"""
    add_node!(dag::DAG, node::String)

Add a node to the DAG
"""
function add_node!(dag::DAG, node::String)

end

"""
    is_dag(digraph::DiGraph)

Verify if a DiGraph is a DAG, throwing an error if it isn't
"""
function is_dag(digraph::DiGraph)
    if !is_cyclic(digraph)
        throw("Graph is cyclic")
    end
end

export 
    is_dag
    add_edge!
    add_node!