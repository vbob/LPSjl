using Documenter
using LPSjl
using Graphs

makedocs(
    sitename = "LPSjl",
    format = Documenter.HTML(),
    modules = [LPSjl],
    pages = [
        "index.md",
        "structureLearning.md",
        "API" => "dags.md",
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/vbob/LPSjl.jl.git"
)
