# julia-getting-started
playing around with Julia

## Episode 5:

Control Flow:  https://docs.julialang.org/en/v1/manual/control-flow/

compound expressions:  z = (x = 1; y = 2; x + y)
```julia
z = begin
           x = 1
           y = 2
           z = x + y
    end
```
similar to python
```python
z = x = 1; y = 2; x + y
```

Tenary Operator is fun to play with:  https://docs.julialang.org/en/v1/manual/control-flow/#man-conditional-evaluation


Short Circuit:  https://docs.julialang.org/en/v1/manual/control-flow/#man-conditional-evaluation

While Loop:  https://docs.julialang.org/en/v1/manual/control-flow/#man-loops

```julia
i = 1;

while i <= 5
    println(i)
    global i+=1
end
```



## Episode 4:  Function Piping (you didn't fully understand!!!)

* [function piping](https://docs.julialang.org/en/v1/manual/functions/#Function-composition-and-piping)

```julia
(sqrt ∘ +)(3, 6)
1:10 |> sum |> sqrt
```

Let's break this down for newbies:

```julia
#Range 1:10
#sum function that sums an iterable/range sum
#sqrt function sqrt function that finds square root
```

julia> 1000 |> sqrt
31.622776601683793

julia> 1:1000 |> sum
500500

#### Broadcast

Each of the elements is then send to a separate function.

```julia
["a", "list", "of", "strings"] .|> [length, length, length, length]
```
##### Vectorized Functions

https://docs.julialang.org/en/v1/manual/functions/#man-vectorized

julia> A = [1.0, 2.0, 3.0]
sqrt.(A)

## Episode 3:  More Functions

* Material for [today on Julia Functions](https://docs.julialang.org/en/v1/manual/functions/)  
* 

## Steps
1.  [Download and add to path](https://julialang.org/downloads/platform/#linux_and_freebsd)
2.  Try out julia from interactive prompt `julia`
3.  Try out a "one-liner" `julia -e 'println(PROGRAM_FILE); for x in ARGS; println(x); end' foo bar`
4.  Create a `hello.jl`
5.  Create a [binary from Julia code](https://docs.juliahub.com/PackageCompiler/MMV8C/1.2.1/devdocs/binaries_part_2.html)

## Covered on July 5th

* Strings and Numbers

## Referencees

* [Julia Package Management](https://docs.julialang.org/en/v1/stdlib/Pkg/)