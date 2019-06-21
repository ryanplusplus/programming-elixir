### Which of the following will match?

```elixir
[ a, b, a ] = [ 1, 2, 3 ] # nope
[ a, b, a ] = [ 1, 1, 2 ] # nope
[ a, b, a ] = [ 1, 2, 1 ] # yes
```

### The variable `a` is bound to the value 2. Which of the following will match?

```elixir
[ a, b, a ] = [ 1, 2, 3 ] # nope
[ a, b, a ] = [ 1, 1, 2 ] # nope
a = 1 # yes
^a = 2 # yes
^a = 1 # nope
^a = 2 - a # nope
```
