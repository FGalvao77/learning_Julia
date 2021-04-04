# My first codes in Julia


# printing "Hello, World!"

println("\nHello, World!")                  # Hello, World!
println(typeof("Hello, World!"))            # String

# my first function

function fullName(firstName::String, lastName::String) :: String
    return (firstName * " " * lastName)
end

name_1 = fullName("Fernando", "Galvão")
println("\n\tFull name: ", name_1)          # Full name: Fernando Galvão
println("\tData type: ", (typeof(name_1)))  # Data type: String
println("")

name_2 = fullName("Kátia", "Galvão")
println("\n\tFull name: ", name_2)          # Full name: Kátia Galvão
println("\tData type: ", (typeof(name_2)))  # Data type: String
println("")

# other types of data

# vector

# strings array/vector
array_1 = ["A", "B", "C", "D"]
println(array_1)
println(typeof(array_1))
println(array_1[4])             # D
println(array_1[1])             # 1 - Caution: the first index in Julia starts at 1
println("")

# numbers (Int64) array/vector
array_2 = [5, 17, 23, 48]
println(array_2)
println(typeof(array_2))
println(array_2[3])
println(array_2[2])
println("")

# numbers (Float64) array/vector
array_3 = [3.1414, 0.1789, 15.7, 101.145]
println(array_3)
println(typeof(array_3))
println(array_3[4])
println(array_3[1])
println("")

# various types of data (Any)
array_4 = ["Fernando", 43, 1.78, "03/04/2021"]
println(array_4)
println(typeof(array_4))
println(array_4[3])
println(array_4[2])
println(typeof(array_4[1]))     # String
println(typeof(array_4[2]))     # Int64
println(typeof(array_4[3]))     # Float64
println(typeof(array_4[4]))     # String
println("")


# matrix

matriz_1 = [1 2 3; 4 5 6]
# # 2 x 3 Array{Int64, 2}
# # 1 2 3
# # 4 5 6
println(matriz_1)
println(typeof(matriz_1))       # Matrix{Int64}
println("")

matriz_2 = [1.68 1.65; 1.60 1.3]
println(matriz_2)
println(typeof(matriz_2))       # Matrix{Float64}
println("")

matriz_3 = ["A" "B" "C"; "D" "E" "F"]
println(matriz_3)
println(typeof(matriz_3))       # Matrix{String}
println("")

matriz_4 = ["Fernando" 43; "Kátia" 40]
println(matriz_4)
println(typeof(matriz_4))       # Matrix{Any}
println("")


# tuple

tupla_1 = "A", "B", "C"
# # ("A", "B", "C")
println(tupla_1)
println(typeof(tupla_1))        # Tuple{String, String, String}
println("")

tupla_2 = 1, 2, 3
println(tupla_2)
println(typeof(tupla_2))        # Tuple{Int64, Int64, Int64}
println("")

tupla_3 = 1.014, 15.09, 7.45
println(tupla_3)
println(typeof(tupla_3))        # Tuple{Float64, Float64, Float64}
println("")

tupla_4 = "A", 77, 1.05
# # ("A", "B", "C")
println(tupla_4)
println(typeof(tupla_4))        # Tuple{String, Int64, Float64}
println("")


# dictionary

dicName = Dict("First Name" => "Fernando", "Last Name" => "Galvão")
# # Dict{String, String} with 2 entries:
# #   "First Name"    => "Fernando"
# #   "Last Name"     => "Galvão"
println(dicName)
println(typeof(dicName))
println("")

dicDataFamily = Dict(
    "Name" => "Fernando", "Age" => 43, "Genro" => "M",
)

println(typeof(dicDataFamily))


# multiple dispatch

function teste(x::Number)
    return x * 2
end

multiplica = teste(20)
println(multiplica)                 # 40
println(typeof(multiplica))
println("")


function teste(x::Number, y::Number)
    return x + y
end

soma = teste(10.05, 7.43)
println(soma)                       # 17.48
println(typeof(soma))
println("")


function teste(x::String)
    return "Hello, " * x *"!"
end

str = teste("Fernando")
println(str)                        # Hello, Fernando!
println(typeof(str))
println("")


function teste(x::String, y::String)
    return x * " " * y
end

twoStr = teste("Language", "Julia")
println(twoStr)                     # Language Julia
println(typeof(twoStr))
println("")


function teste(x::String, y::String)
    return "\n\tName: " * x * " | " * "Age: " * y
end

strNum = teste("Fernando", "43")
println(strNum)                     # Name: Fernando | Age: 43
println(typeof(strNum))
println("")
