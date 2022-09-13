#!/usr/bin/env julia
## Really simple example of a command line interface
## to a Julia function
## Usage: cliJulia.jl 1 2 3

#build a function to add two numbers
function addNumbers(a,b)
    return a+b
end


#build a function to print the command line arguments
function printArgs()
    println("Example: add two numbers together: i.e. pass in 4 5")
    #create julia array to hold the command line arguments
    args = []
    for arg in ARGS
        #push the command line arguments into the array
        myarg = parse(Float64, arg)
        push!(args, myarg)
        #println(arg)
    end
    sum = addNumbers(args[1],args[2])
    println("Adding ", args[1], " and ", args[2], " gives ", sum)
end

printArgs()