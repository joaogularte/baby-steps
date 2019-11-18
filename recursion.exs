defmodule Recursion do
    
    def print_n_times(msg, n) when n > 3, do: ''

    def print_n_times(msg, n) do
        IO.puts msg <> " Chamou na segunda"
        print_n_times(msg, n + 1)
    end
end

defmodule Math do
    
    #algoritmo reduce: reduz a lista a um valor
    def sum_list([head | tail], accumulator) do
        #IO.puts accumulator
        sum_list(tail, head + accumulator)
    end

    def sum_list([], accumulator) do
        accumulator
    end

    #algoritmo map: percorrer cada valor da lista, dobrando seu valor, e retornar outra lista
    def double_each([head | tail]) do
        [head * 2| double_each(tail)]
    end

    def double_each([]) do
        []
    end


end

IO.puts Math.sum_list([1, 2, 4, 5, 6], 0)
IO.inspect Math.double_each([1, 2, 4, 5, 6])

#Enum.reduce uma alternativa para o sum_list
IO.puts Enum.reduce([1, 2, 4, 5, 6], 0, fn(x, acc) -> x + acc end)

#Enum.map uma alternativa para o double_each
func = fn(x) -> x * 2 end
IO.inspect Enum.map([1, 2, 4, 5, 6], func)

