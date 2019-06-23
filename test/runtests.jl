#!/usr/bin/env julia
using Pkg
push!(LOAD_PATH,"../src/Retriever.jl")

Pkg.add("SQLite")
Pkg.add("MySQL")
Pkg.build()
Pkg.add(PackageSpec(path = "."))
Pkg.test("Retriever")
