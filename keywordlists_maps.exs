#list - key deve ser um atom
#     - Keys devem ser ordenadas, pelo dev
#     - Keys podem ser repetidas
# geralmente usadas para passar valores opcionais 
# Não é usado para armanezar muitos itens devido a ter a mesma perfornance(ruim) das listas
list = [a: "oio", b: "foi", a: "oia"]
IO.puts list[:a]

list = [{:a, 1}, {:b, 3}]
IO.inspect list == [a: 1, b: 3]
IO.inspect list ++ [c: 6]

#maps - key-value store preferivel
#     - permite qualquer valor como key
#     - nao segui nenhum ordem

map = %{:a =>div(12,3), 2 => "foi"}
IO.inspect map[2]
new_map = Map.put(map, :ato, 3)
another_map = %{new_map | 2 => 35}
IO.inspect another_map

#Nested data Structures
users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

IO.puts users[:john].name

# put_in
# update_in