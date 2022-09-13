#!/usr/bin/env julia
# Path: cliJuliaParse.jl
# Compare this snippet from cliJulia.jl:

using ArgParse


function addNumbers(a,b)
    return a+b
end

function parse_commandline()
    s = ArgParseSettings()

    @add_arg_table s begin
        "--number1"
            help = "The first number to add"
            arg_type = Int
            default = 1
        "--number2", "-o"
            help = "The second number to add"
            arg_type = Int
            default = 2
    end

    return parse_args(s)
end

function main()
    parsed_args = parse_commandline()
    println("Adding Two Numbers:")
    result = addNumbers(parsed_args["number1"],parsed_args["number2"])
    println("Adding ", parsed_args["number1"], " and ", parsed_args["number2"], " gives ", result)
end

main()