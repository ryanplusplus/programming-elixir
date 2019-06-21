list_concat = fn ([a, b], [c, d]) -> [a, b, c, d] end

IO.inspect list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
