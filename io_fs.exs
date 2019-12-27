{:ok, file} =  File.open("hello", [:write])
IO.binwrite(file, "Foi foi foi")
File.close(file)
IO.inspect File.read!("hello")