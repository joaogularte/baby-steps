defmodule Math do
    def sum(a,b) do
        do_sum(a, b)
    end

    #private func
    defp do_sum(a, b) do
        a+b
    end

    #? significa que ela ira retornar boolean, porem nao sera usada com guards (when, etc)
    #caso a função é usada em guards e retorna boolean, usar is_
    #usar syntax def teste (), do: clause para funções de uma linha
    def zero?(0), do: true

    def zero?(x) when x == 0,  do: true     
end

IO.puts Math.zero?(0)
IO.puts Math.zero?(0)
##IO.puts Math.bigger_than_one?(-1)
IO.puts Math.sum(1, 4)
