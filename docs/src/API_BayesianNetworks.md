# Bayesian Networks module

```@meta
CurrentModule = LPSjl.BayesianNetworks
```

## Nodes

```@docs
 AbstractNode
```

### DiscreteNode
```@docs
 DiscreteNode
```

```@docs
 name(node::DiscreteNode) 
```

```@docs
 parents(node::DiscreteNode)
```

```@docs
 categories(node::DiscreteNode)
```

```@docs
 parameters(node::DiscreteNode)
```

```@docs
 add_parent!(node::DiscreteNode, parent::DiscreteNode)
```

```@docs
set_parameters!(node::DiscreteNode, parameters::SparseMatrixCSC)
```

## Bayesian Networks

```@docs
 BayesianNetwork
```
