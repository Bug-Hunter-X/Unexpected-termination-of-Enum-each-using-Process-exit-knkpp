```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Instead of Process.exit, use a conditional return
    :ok = :skip # Indicate we are skipping this iteration
  else
    IO.puts(x)
  end
end)

# Alternative Solution using Enum.filter to remove element 3 before Enum.each
list = [1, 2, 3, 4, 5]
filtered_list = Enum.filter(list, fn x -> x != 3 end)
Enum.each(filtered_list, fn x -> IO.puts x end)
```