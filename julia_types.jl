#This is a comment
function foo()
    x::Int8 = 100
    y::Int8 = x + 1
    z::Int8 = y + 1
    return z
end

## print the result of foo() with a newline
println(foo())

## print the julia type of foo()
println(typeof(foo()))

#declaration attached to a function
function sinc(x)::Float64
    if x == 0
        return 1
    end
    return sin(pi*x)/(pi*x)
end

## print the result of sinc(0)
println(sinc(0))

## print the julia type of sinc(0)
println(typeof(sinc(0)))

## Creating a struct with multiple types inside
struct Foo
    bar
    baz::Int
    qux::Float64
end

## https://docs.julialang.org/en/v1/manual/types/#man-custom-pretty-printing
## TODO: print the result of Foo(1, 2, 3.0)1
## Good project for me to test the type system for structs and print them out
## create a new Foo struct instance
#foo = Foo(bar = "hello", baz = 1, qux = 1.0)
## custom print function using Base.show for foo
##Base.show(io::IO, z::Foo) = print()
## print the result of foo
##println(foo)

# struct Polar
struct Polar{T<:Real} <: Number
    r::T
    Θ::T
end
Polar(r::Real,Θ::Real) = Polar(promote(r,Θ)...)

# custom print function for Polar
#Base.show(io::IO, z::Polar) = print()
Base.show(io::IO, z::Polar) = print(io, z.r, " * exp(", z.Θ, "im)")
a = Polar(3, 4.0)
# print the result of a
println(a)