#!/usr/bin/env julia
## Really simple example of a command line interface
## to a Julia function
## Usage: cliJulia.jl 1 2 3


#build a function to print the command line arguments
function printArgs()
    println("The command line arguments are:")
    for arg in ARGS
        println(arg)
    end
end

#call the function
printArgs()


