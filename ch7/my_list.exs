defmodule MyList do
  # Write a mapsum function that takes a list and a function.
  # It applies the function to each element of the list and
  # then sums the result, so
  #   iex>​ MyList.mapsum [1, 2, 3], &(&1 * &1) ​ 14
  def mapsum(xs, f) do
    xs |> Enum.map(f) |> Enum.reduce(0, &+/2)
  end

  # Write a max(list) that returns the element with the maximum
  # value in the list. (This is slightly trickier than it
  # sounds.)
  def max(xs) do
    Enum.reduce(xs, 0, &Kernel.max/2)
  end

  # An Elixir single-quoted string is actually a list of
  # individual character codes. Write a caesar(list, n)
  # function that adds n to each list element, wrapping if the
  # addition results in a character greater than z.
  #   iex> MyList.caesar(​'ryvkve', 13)
  def caesar(xs, shift) do
    Enum.map xs, fn x ->
      shifted = x + shift
      if [shifted] > 'z', do: shifted - 26, else: shifted
    end
  end

  # Write a function MyList.span(from, to) that returns a list
  # of the numbers from `from` up to `to`.
  def span(x, x), do: [x]
  def span(from, to), do: [from | span(from + 1, to)]
end
