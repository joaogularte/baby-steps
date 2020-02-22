#example 1
v = 24
tuple = {4, 5, 6} 

# case - compara um valor contra varios padrões até encontrar um que combine 
case tuple do
    {4, 5, 6} -> IO.puts "Deu match aqui"
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

#cond é usado quando é necessário fazer comparação de valores diferentes 
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

# if e unless são macros utilizadas para checar somente uma condição 
if true do
    
end

unless false do
    IO.puts "foi"
end

if false, do: IO.puts "true", else: IO.puts "false"

# with - utilizado para checar varias condições 
user = %{primeiro: "oia", ultimo: "foi"}
with {:ok, ultimo} <- Map.fetch(user, :ultimo),
    {:ok, primeiro} <- Map.fetch(user, :primeiro),
do: IO.puts ultimo <> ", " <> primeiro