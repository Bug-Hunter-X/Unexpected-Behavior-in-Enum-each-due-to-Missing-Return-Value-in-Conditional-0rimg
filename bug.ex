```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # This will not raise an error, but it's bad practice
    # because it doesn't return anything.
    # This could be problematic if you were expecting a value back from this function
    # and it short-circuits in unexpected ways.
  else
    IO.puts(x)
  end
  # In this loop it does not properly short circuit because the if does not have an else clause.
  # Thus, this will always continue
  # This may not always be a bug, but a style thing. However, for short circuits it is a bug.
end)
```