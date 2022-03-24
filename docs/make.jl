using Documenter
using LPSjl
using Graphs

makedocs(
    sitename = "Julia Bayesian Networks Library",
    format = Documenter.HTML(),
    modules = [LPSjl, LPSjl.BayesianNetworks, LPSjl.ParameterLearning],
    pages = [
        "index.md",
        "structureLearning.md",
        "Examples" => ["EX_BayesianNetworks.md"],
        "API" => ["API_BayesianNetworks.md", "API_ParameterLearning.md"]
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/vbob/LPSjl.jl.git"
)
