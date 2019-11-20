pid = spawn fn -> 1 + 2 end
IO.inspect pid
send_mgs = fn (msg) -> send self(), {:ok, msg} end
receive_mgs = fn ->
    receive do
        {:ok, value} -> "OK from #{ inspect value}"
    after 
        1_000 -> "nothing after 1s"
    end
end

IO.inspect send_mgs.("ola")
IO.inspect receive_mgs.()


IO.inspect self()

actual_process = fn -> self() end
IO.inspect actual_process.()


IO.inspect parent = self()
pid = spawn fn -> send(parent, {:ok, self()}) end 
IO.puts receive_mgs.()
IO.puts "IS alive? #{ inspect Process.alive?(pid)}"


# spawn fn -> raise "Foi mal" end - O processo pai continua rodando - Processos isolados
# spawn_link fn -> raise "Foi mal" end - O processo pai morre tbm - Processos unidos