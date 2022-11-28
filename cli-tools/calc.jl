#!/usr/bin/env julia
#build a simple calculator using arg_parse
using ArgParse

function parse_commandline()
    s = ArgParseSettings()
    @add_arg_table! s begin
        "--num1"
        help = "First Number to Process"
        arg_type = Int
        required = true
        "--num2"
        help = "Second number to process"
        arg_type = Int
        required = true
    end
    return parse_args(s)
end
#add the two numbers
function add(num1, num2)
    return num1 + num2
end
function main()
    parsed_args = parse_commandline()
    num1 = parsed_args["num1"]
    num2 = parsed_args["num2"]
    println("The sum of $num1 and $num2 is $(add(num1, num2))")
    println("Parsed args:")
    for (arg, val) in parsed_args
        println("  $arg  =>  $val")
    end
end

main()
