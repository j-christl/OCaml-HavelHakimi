# OCaml-HavelHakimi
Functional implementation of the Havel-Hakimi algorithm (https://en.wikipedia.org/wiki/Havel%E2%80%93Hakimi_algorithm) in OCaml

```ocaml
val havel_hakimi : int list -> bool = <fun>
```

## Examples

### Example 1
```ocaml
# havel_hakimi [1;1;2;3;4;4;5];;
5 4 4 3 2 1 1 
3 3 2 1 0 1  (unsorted)
3 3 2 1 1 0 
2 1 0 1 0  (unsorted)
2 1 1 0 0 
0 0 0 0  (unsorted)
0 0 0 0 
- : bool = true
```

### Example 2
```ocaml
# havel_hakimi [2;2;2;2;3];;
3 2 2 2 2 
1 1 1 2  (unsorted)
2 1 1 1 
0 0 1  (unsorted)
1 0 0 
-1 0  (unsorted)
0 -1 
- : bool = false
```
