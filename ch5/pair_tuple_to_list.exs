pair_tuple_to_list = fn {a, b} -> [a, b] end

IO.inspect pair_tuple_to_list.({ 1234, 5678 }) #=> [ 1234, 5678 ]
