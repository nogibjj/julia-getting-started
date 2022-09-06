## single method
g(x::Float64, y) = 2x + y

## two methods
g(x, y::Float64) = x + 2y

## Three methods
g(x::Float64, y::Float64) = 2x + 2y

## print the function all three ways
println("This is a function with three methods")
println(g(1.0, 2))
println(g(1, 2.0))
println(g(1.0, 2.0))