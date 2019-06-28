# Implement the following Enum functions using no library
# functions or list comprehensions: all?, each, filter,
# split, and take.

defmodule MyEnum do
  def all?([head | tail]), do: !!head and !!all?(tail)
  def all?([]), do: true

  def each([], _), do: nil
  def each([head | tail], f) do
    f.(head)
    each(tail, f)
  end

  def filter([], _), do: []
  def filter([head | tail], f) do
    if f.(head) do
      [head] ++ filter(tail, f)
    else
      filter(tail, f)
    end
  end

  def take(_, 0), do: []
  def take([head | tail], count) when count > 0 do
    [head] ++ take(tail, count - 1)
  end

  def drop(xs, 0), do: xs
  def drop([_ | tail], count) when count > 0 do
    drop(tail, count - 1)
  end

  def split(xs, count), do: { take(xs, count), drop(xs, count) }
end
