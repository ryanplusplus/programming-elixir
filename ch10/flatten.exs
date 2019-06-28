# Write a flatten(list) function that takes a list that
# may contain any number of sublists, which themselves
# may contain sublists, to any depth. It returns the
# elements of these lists as a flat list.
#   iex> MyList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]]) ​ [1,2,3,4,5,6]

defmodule Flatten do
  def flatten([head | tail]) when is_list(head) do
    flatten(head) ++ flatten(tail)
  end

  def flatten([head | tail]) do
    [head] ++ flatten(tail)
  end

  def flatten([]), do: []
end
