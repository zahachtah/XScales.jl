using Documenter, XScales

makedocs(;
    modules=[XScales],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/zahachtah/XScales.jl/blob/{commit}{path}#L{line}",
    sitename="XScales.jl",
    authors="Jon Norberg, Stockholm Resilience Centre, Stockholm University",
    assets=String[],
)

deploydocs(;
    repo="github.com/zahachtah/XScales.jl",
)
