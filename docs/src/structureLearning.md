# Bayesian Networks structure learning: a summary

Given:

* A set of random variable $X_1, X_2, ..., X_n$
* A data set $D$ on those variables

Find a Bayesian network (structure $S$ + parameters $\theta_s$) that is optimal.


## The problem of model selection

A Bayesian Network structure includes assumptions on how variables are related, thus being called a *model*.

Therefore, given a data set $D$ what Bayesian Network Structure $S$ should be selected?


### Maximum Likelihood Estimation (MLE)

Maximum Likelihood Estimation is a method to choose parameters of  model. The selected parameters aim to maximise the likelihood that the process described by the model is observed in the data. 

In other words, choose parameters to maximize the log-likelihood $l(\theta|D) = log$ $P(D|\theta)$

Log-likelihood of $(S, \theta_S)$ given the data $D$ is $l(S, \theta_S|D) = log$ $P(D|S, \theta_S)$

Choose the structure and parameters that maximize the log-likelihood, therefore, find $(S^*, \theta_S^*)$ that 

```math
l(S^*, \theta_S^*|D) = \sup_{S, \theta_S} l(S, \theta_S|D) = \max_{S}\sup_ {\theta_S} l(S, \theta_S|D)
```

Given $S$ it is possible to find $\theta_S^*$ that maximizes $l(S, \theta_S|D)$, which is the MLE of the parameters, by 

```math
l^*(S|D) = \sup_{\theta_S} l(S, \theta_S|D) = l(S, \theta_S^*|D)
```

Thus, the model selection aims to find the structure $S$ that maximizes $l^*(S|D)$.

## References

- [Nevin L. Zhang. COMP538: Introduction to Bayesian Networks](https://cse.hkust.edu.hk/bnbook/pdf/l08.h.pdf)
- [Jonny Brooks-Bartlett. Probability concepts explained: Maximum likelihood estimation](https://towardsdatascience.com/probability-concepts-explained-maximum-likelihood-estimation-c7b4342fdbb1)
- [Heckerman, Geiger & Chickering. Learning Bayesian Networks: The Combination of Knowledge and Statistical Data](https://link.springer.com/content/pdf/10.1023/A:1022623210503.pdf)