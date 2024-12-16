```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    :ok # Return a value to make the intent clear
  else
    IO.puts(x)
  end
  # In this loop it does not properly short circuit because the if does not have an else clause.
  # Thus, this will always continue
  # This may not always be a bug, but a style thing. However, for short circuits it is a bug.
  # This is generally fine for functional code. However, sometimes there is a need to short circuit.
end)
```