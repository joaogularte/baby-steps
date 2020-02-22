IO.puts "Opa Mundo"


add = fn a, b -> a + b end
double = fn a -> add.(a, a) end
IO.puts "Result add: #{add.(4,6)}"
IO.puts "Result add: #{double.(4)}"


IO.puts "Result: #{is_binary "oia"}"
IO.puts "Result: #{length [1, 2, 4, 5]}"
list_ = [1, 2, 4, 5]
IO.puts elem(list_, 2)
IO.inspect list_ ++ [34, 54, 65]
IO.inspect tl(list_), label: 'oia'


#    'oia' = charlist  [111, 105, 97]
#    "oia" = String 

IO.puts 'oia' == "oia"

tuple_ = {:oia, "foi ele"}
IO.puts elem(tuple_, 0)
IO.inspect tuple_
IO.puts elem(tuple_, 0)
 put_elem(tuple_, 1, "foi")
IO.inspect tuple_

##linked list - salvas na memoria como listas encadeadas- imutaveis
list = [12, 43, 54, 65]
IO.inspect [0] ++ list ##fast  
IO.inspect list ++ [0] ##slow


##tuple - faster but expensive - elementos salvos na memoria de maneira continua - imutavel 
# normalmente usadas em retorno de funções
IO.inspect tuple = {:a, :b, :c, :d}
IO.inspect put_elem(tuple, 2, :e)

## size - operation is in constant time
## length - operation is linear
## byte_size - number of bytes in a string
## tuple_size - tuple size 
## length - list length
## String.length - number os caracteres in a string
