#example 1
v = 24
case {10, 23, 15} do
    {4, 5, 6} -> IO.puts "Nao sao iguais"
    {10, ^v, 15} -> IO.puts "Deu match"
    _ -> IO.puts "vai todos"
end

#example 2
case {1, 23, 3} do
    {1, a, 3} when a > 0 -> IO.puts "valor de x: #{a} maior que zero"
end

#example 2
f = fn 
    x, y -> x + y
    x, y -> x * y
end

IO.puts f.(4,3)

#example 3
b = 34
cond do
    b > 32 -> IO.puts "Foi"
    true -> IO.puts "Sempre vai"
end

y = 4
case y  do
    4 -> IO.puts "eh"
end

IO.puts f.(45,56)
IO.puts f.(-8, 4)

if true do
    
end

unless false do
    IO.puts "foi"
end

if false, do: IO.puts "true", else: IO.puts "false"