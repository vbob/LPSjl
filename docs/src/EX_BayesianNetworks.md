# Instancing a Bayesian Network

## Example 1 - Simple Bayesian Network

![Example 1.5](images/neapolitan_fig1.5.png)

```julia 
# Node C
node_C = DiscreteNode("C", ["c1", "c2"])
set_parameters!(node_C, sparse([9/13 4/13]))

# Node V
node_V = DiscreteNode("V", ["v1", "v2"])
add_parent!(node_V, node_C)
set_parameters!(node_V, sparse([[1/3 2/3]; [1/2 1/2]]))

# Node S
node_S = DiscreteNode("S", ["s1", "s2"])
add_parent!(node_S, node_C)
set_parameters!(node_S, sparse([[2/3 1/3]; [1/2 1/2]]))
```


## References
- Neapolitan, R. Learning Bayesian Networks
