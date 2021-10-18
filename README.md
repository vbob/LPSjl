# LPSjl

[![Build Status](https://travis-ci.com/vitor.barth/LPSjl.jl.svg?branch=main)](https://travis-ci.com/vitor.barth/LPSjl.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/vitor.barth/LPSjl.jl?svg=true)](https://ci.appveyor.com/project/vitor.barth/LPSjl-jl)
[![Coverage](https://codecov.io/gh/vitor.barth/LPSjl.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/vitor.barth/LPSjl.jl)
[![Coverage](https://coveralls.io/repos/github/vitor.barth/LPSjl.jl/badge.svg?branch=main)](https://coveralls.io/github/vitor.barth/LPSjl.jl?branch=main)

Library for Dynamic Bayesian Networks in Julia.

## How to Contribute

1. Create a new branch with the functionality code
2. Make your changes
    * Ask for help if needed
3. Create a merge request

New files and folders are encouraged to be created to provide better responsabilities separation and easier exploration of the project.

For now, working code is better than reusable code. Refactoring time will come when all basic functionalities have been implemented.

## To do List

Each of the items in the list have a suggested file where such functionality should be added.

- [ ] DBN01 - Create structure for storing DAGs (DAG.jl)\
        DAG -> LightGraphs* (https://nbviewer.org/github/JuliaGraphs/JuliaGraphsTutorials/blob/master/DAG-Julia-Pkgs.ipynb)

- [ ] DBN02 - Create structure for storing Conditional Probability Tables (CPT.jl)

- [ ] DBN03 - Create structure for storing Bayesian Networks as DAG as CPT pairs (BayesianNetwork.jl)\
        BN: Dictonary {nodes: cpt} \
        nodes [list of nodes], last position indicate destiny, nodes: [a, b] indicate a->b\
        CPT (matrix or list of list) head of matrix are the parents and rows are the destiny node\
        it could be used as dataframe? Problem is each edge will be a dataframe


- [ ] DBN04 - Create functions for basic BN inference (BayesianNetwork.jl)
- [ ] DBN05 - Create interface for BN scoring (BaseScore.jl)
- [ ] DBN05A - Implement AIC, WAIC, BIC and BDEu Scores (scores/${ScoreName}.jl)
- [ ] DBN06 - Create interface for BN structure learning (BaseStructureLearning.jl)
- [ ] DBN06A - Implement Hill Climb, PC, Mold and Genetic BN structure learning algorithms (structureLearning/${Algorithm}.jl)
- [ ] DBN07 - Create interface for BN parameters learning (BaseParameterLearning.jl)
- [ ] DBN07A - Implement BN parameters learning algorithms (structureLearning/${Algorithm}.jl)
- [ ] DBN08 - Create notebook with basic use scenario (examples/basic.ipynb)
- [ ] DBN AC01 - Set of functions to evaluate consistency through datasets (Stationary test/Markov Condition/)


Future:
* Julia styled documentation
* Unit tests
* BN plot and export functions
* BN export functions
* Learn BNs from timestamped data
* Matthews Correlation Coefficient
* Algorithm for combining BNs with MCMC

* LightGraphs lets wait what will come
