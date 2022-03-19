using Documenter
using LPSjl
using Graphs

makedocs(
    sitename = "LPSjl",
    format = Documenter.HTML(),
    modules = [LPSjl, LPSjl.ContinuousInference],
    pages = [
        "index.md",
        "structureLearning.md",
        "API" => ["dags.md", "continuous.md"]
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/vbob/LPSjl.jl.git"
)
