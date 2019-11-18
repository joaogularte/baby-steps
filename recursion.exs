defmodule Recursion do
    
    def print_n_times(msg, n) when n > 3, do: ''

    def print_n_times(msg, n) do
        IO.puts msg <> " Chamou na segunda"
        print_n_times(msg, n + 1 )
    end
end

Recursion.print_n_times("OIa", 1)