# Write a function that takes three arguments. If the first two are
# zero, return “FizzBuzz.” If the first is zero, return “Fizz.” If the
# second is zero, return “Buzz.” Otherwise return the third argument.
# Do not use any language features that we haven’t yet covered in this
# book.

fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end

# The operator rem(a, b) returns the remainder after dividing a by b.
# Write a function that takes a single integer ( n ) and calls the
# function in the previous exercise, passing it rem(n,3), rem(n,5),
# and n. Call it seven times with the arguments 10, 11, 12, and so on.
# You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.”

fizzer = fn n -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.inspect fizzer.(10) # "Buzz"
IO.inspect fizzer.(11) # "11"
IO.inspect fizzer.(12) # "Fizz"
IO.inspect fizzer.(13) # 13
IO.inspect fizzer.(14) # 14
IO.inspect fizzer.(15) # "FizzBuzz"
IO.inspect fizzer.(16) # 16
