defmodule Math do
    @moduledoc """
    


    """

    @doc """
    
    """

    @initial_state %{host: "127.0.0.1", port: 8080}
    def sum(a, b) do
        IO.inspect @initial_state
        a+b
    end
end