# LPSjl

[![Build Status](https://travis-ci.com/vitor.barth/LPSjl.jl.svg?branch=main)](https://travis-ci.com/vitor.barth/LPSjl.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/vitor.barth/LPSjl.jl?svg=true)](https://ci.appveyor.com/project/vitor.barth/LPSjl-jl)
[![Coverage](https://codecov.io/gh/vitor.barth/LPSjl.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/vitor.barth/LPSjl.jl)
[![Coverage](https://coveralls.io/repos/github/vitor.barth/LPSjl.jl/badge.svg?branch=main)](https://coveralls.io/github/vitor.barth/LPSjl.jl?branch=main)

Library for Dynamic Bayesian Networks in Julia.

<br/>

## How to Contribute

1. Create a new branch with the functionality code
2. Make your changes
    * Ask for help if needed
3. Create a merge request

New files and folders are encouraged to be created to provide better responsabilities separation and easier exploration of the project.

For now, working code is better than reusable code. Refactoring time will come when all basic functionalities have been implemented.

## To do List

Each of the items in the list have a suggested file where such functionality should be added.


### Data Structures

**DAGs**
- [ ] DBN01 - Create structure for storing DAGs (DAG.jl)
    - Use [Graphs.jl](https://github.com/JuliaGraphs/Graphs.jl) as reference
    - Proposed structure DAG: `Dictionary{ node: { parents } }`



**Probability Tables**
- [ ] DBN02 - Create structure for storing Conditional Probability Tables (`CPT.jl`)



**Bayesian Networks**
- [ ] DBN03 - Create structure for storing Bayesian Networks as DAG and CPT pairs
    - `(BayesianNetwork.jl)`: 
        - `Structure: Array{node}`
        - `CPT: DataFrame`
        - `columns(CPT)`: `node.parents`


### Inference
- [ ] DBN04 - Create functions for basic BN inference (`BayesianNetwork.jl`)



### Scoring 
- [ ] DBN05 - Create interface for BN scoring (`BaseScore.jl`)
- [ ] DBN05A - Implement AIC, WAIC, BIC and BDEu Scores (`scores/${ScoreName}.jl`)



### Learning 

**Structure**
- [ ] DBN06 - Create interface for BN structure learning (`BaseStructureLearning.jl`)
- [ ] DBN06A - Implement Hill Climb, PC, Mold and Genetic BN structure learning algorithms (`structureLearning/${Algorithm}.jl`)




**Parameters**
- [ ] DBN07 - Create interface for BN parameters learning (`BaseParameterLearning.jl`)
- [ ] DBN07A - Implement BN parameters learning algorithms (`structureLearning/${Algorithm}.jl`)



### Misc
- [ ] DBN08 - Create notebook with basic use scenario (`examples/basic.ipynb`)
- [ ] DBN AC01 - Set of functions to evaluate consistency through datasets\
        - Stationarity Tests\
        - Markov Condition

**OBS Algorithm**
- [ ] Use [StatsBase.jl](https://juliastats.org/StatsBase.jl/latest/statmodels/) for calculating Bayesian/Akaike Information Criterion (AIC/BIC) for Bayesian networks given the data
- [ ] Implement the order-based search algorithm with network in-degree constraints, as proposed by Teyssier & Koller (2012)
- [ ] Implemente the Acyclic Selection Ordering-Based Search (ASOBS), proposed by Scanagatta et al. (2015)



## Future:
* Julia styled documentation
* Unit tests
* BN plot and export functions
* BN export functions
* Learn BNs from timestamped data
* Matthews Correlation Coefficient
* Algorithm for combining BNs with MCMC


# References:
- Beinlich, Ingo A., et al. "The ALARM monitoring system: A case study with two probabilistic inference techniques for belief networks." AIME 89. Springer, Berlin, Heidelberg, 1989. 247-256. [Link](http://cs.brown.edu/courses/cs242/assignments/alarmNetwork.pdf)
- de Campos, Cassio P., et al. "Entropy-based pruning for learning Bayesian networks using BIC." Artificial Intelligence 260 (2018): 42-50. [Link](https://www.sciencedirect.com/science/article/pii/S000437021830167X)
- Heckerman, David, Dan Geiger, and David M. Chickering. "Learning Bayesian networks: The combination of knowledge and statistical data." Machine learning 20.3 (1995): 197-243. [Link](https://link.springer.com/content/pdf/10.1023/A:1022623210503.pdf)
- Neapolitan, Richard E. Learning bayesian networks. Vol. 38. Upper Saddle River: Pearson Prentice Hall, 2004. [Link](http://www.cs.technion.ac.il/~dang/books/Learning%20Bayesian%20Networks(Neapolitan,%20Richard).pdf)
- Scanagatta, Mauro, Antonio Salmerón, and Fabio Stella. "A survey on Bayesian network structure learning from data." Progress in Artificial Intelligence 8.4 (2019): 425-439. [Link](https://doi.org/10.1007/s13748-019-00194-y)
- Scanagatta, Mauro, et al. "Approximate structure learning for large Bayesian networks." Machine Learning 107.8 (2018): 1209-1227. [Link](https://doi.org/10.1007/s10994-018-5701-9)
- Scanagatta, Mauro, Giorgio Corani, and Marco Zaffalon. "Improved local search in Bayesian networks structure learning." Advanced Methodologies for Bayesian Networks. PMLR, 2017. [Link](http://proceedings.mlr.press/v73/scanagatta17a/scanagatta17a.pdf)
- Scanagatta, Mauro, et al. "Learning Bayesian networks with thousands of variables." Advances in neural information processing systems 28 (2015). [Link](https://proceedings.neurips.cc/paper/2015/file/2b38c2df6a49b97f706ec9148ce48d86-Paper.pdf)
- Schwarz, Gideon. "Estimating the dimension of a model." The annals of statistics (1978): 461-464. [Link](https://www.jstor.org/stable/pdf/2958889.pdf?casa_token=YrNOrw26kmkAAAAA:TJw26MoLnAeWYeM_kxJ96_C-JYW5fAS2smQkmp-Y-L6-YWthD44MjJqb6nZx1l0sANFhJdf-T4-XoL5Prruop6cNbBPuEsNBZOTp_Ezj79IXGB4jjv2b)
- Teyssier, Marc, and Daphne Koller. "Ordering-based search: A simple and effective algorithm for learning Bayesian networks." arXiv preprint arXiv:1207.1429 (2012). [Link](https://arxiv.org/pdf/1207.1429)
