IO.puts "Opa Mundo"


add = fn a, b -> a + b end
double = fn a -> add.(a, a) end
IO.puts "Result add: #{add.(4,6)}"
IO.puts "Result add: #{double.(4)}"


IO.puts "Result: #{is_binary "oia"}"
IO.puts "Result: #{length [1, 2, 4, 5]}"
list_ = [1, 2, 4, 5]

IO.inspect list_ ++ [34, 54, 65]
IO.inspect tl(list_), label: 'oia'


#    'oia' = charlist  [111, 105, 97]
#    "oia" = String 

IO.puts 'oia' == "oia"

tuple_ = {:oia, "foi ele"}
IO.inspect tuple_
IO.puts elem(tuple_, 0)
 put_elem(tuple_, 1, "foi")
IO.inspect tuple_

##linked list
list = [12, 43, 54, 65]
IO.inspect [0] ++ list ##fast  
IO.inspect list ++ [0] ##slow


##tuple - faster but expensive
IO.inspect tuple = {:a, :b, :c, :d}
IO.inspect put_elem(tuple, 2, :e)


## byte_size
## tuple_size
## length 
## String.length