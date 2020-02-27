#Enum - list and maps
list = Enum.map(1..10_000_000, fn x -> x * 2 end)
IO.inspect list
# functions of Enum module are eager - expect enumerable and return list back

# Stream, alternative to Enum, which supports lazy operations
stream = 1..10_000_000 |> Stream.map(&(&1 * 3)) |> Stream.take(100) |> Enum.to_list # return Stream that represents the map computation over the range 1..100_000:
