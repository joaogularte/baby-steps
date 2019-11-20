defmodule KV do
    def start_link do
        Task.start_link(fn -> loop(%{}) end)
    end

    defp loop(map) do
        receive do
            {:get, key, caller} -> Map.get(map, key)
            {:put, key, value} -> loop(Map.put(map, key, value))
        end
    end
end