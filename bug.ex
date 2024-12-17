```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # This will cause the Enum.each to stop, even though it's not explicitly breaking
    Process.exit(self(), :normal)
  end
  IO.puts(x)
end)
```