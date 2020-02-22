x = 1 #atribui a variavel
1 = x #pattern matching
2 = x
{a, b, c} = {:foi, 45, "atom"}
{:ok, result} = {:ok, 13}
b = 3
^b = 4
# para o elixir variaveis que comecem com _ são desconsideradas
[head | _] = [1, 34, 54]
