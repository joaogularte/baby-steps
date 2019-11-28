defmodule User do
    @enforce_keys :name
    defstruct [:name, :age, year: 1996]  
end
