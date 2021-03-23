# Documentation
`viter` provides iterators for the [V Programming Language](https://github.com/vlang/v).
This module was created at a time when generics couldn't support something like this, so
code generation is used instead.

## Supported Types
The following types are supported in this module.

* `bool` `[]bool`
* `string` `[]string`
* `int` `[]int`
* `byte` `[]byte`
* `rune` `[]rune`
* `f64` `[]f64`

Arrays will be translated to `<type>_arr` when needed in function
names. For example, to create an iterator where each element is `[]int`,
you would use the `iter_int_arr()` function.

## Functions

* [chain](#chain)
* [chain_arr](#chain_arr)
* [chunks](#chunks)
* [collect](#collect)
* [count](#count)
* [cycle](#cycle)
* [debug](#debug)
* [every](#every)
* [filter](#filter)
* [fold](#fold)
* [iter](#iter)
* [map](#map)
* [rev](#rev)
* [skip](#skip)
* [skip_while](#skip_while)
* [take](#take)
* [take_while](#take_while)
* [tap](#tap)
* [windows](#windows)

### iter
```
viter.iter_<type>([]<type>)
```
Create an iterator from an array. This is generally the first function
called. Returns a struct that implements the `next() ?<type>` method.

```v
// create an iterator over [1, 2, 3]
mut iter := viter.iter_int([1, 2, 3])

println(iter.next()) // Option(1)
println(iter.next()) // Option(2)
println(iter.next()) // Option(3)
println(iter.next()) // none
```

### chain
```
iter_a.chain(iter_b)
```
Chain `iter_b` to the end of `iter_a`. When `iter_a` runs out of elements,
`iter_b` will be used.

```v
mut iter := viter.iter_int([1, 2]).chain(viter.iter_int([3, 4]))

println(iter.next()) // Option(1)
println(iter.next()) // Option(2)
println(iter.next()) // Option(3)
println(iter.next()) // Option(4)
println(iter.next()) // none
```

### chain_arr
```
iter_a.chain(arr_b)
```
Create an iterator for `arr_b` and chain it to the end of `iter_a`.
See [chain](#chain).

```v
mut iter := viter.iter_int([1, 2]).chain_arr([3, 4])

println(iter.next()) // Option(1)
println(iter.next()) // Option(2)
println(iter.next()) // Option(3)
println(iter.next()) // Option(4)
println(iter.next()) // none
```

### chunks
```
iter.chunks(size int)
```
Group elements into an array with at most `size` elements each. If the
incoming iterator is not divisible by `size`, the last iteration will
have the remaining elements.

```v
mut iter := viter.iter_int([1, 2, 3, 4, 5]).chunks(2)

println(iter.next()) // Option([1, 2])
println(iter.next()) // Option([3, 4])
println(iter.next()) // Option([5])
println(iter.next()) // none
```

### collect
```
iter.collect()
```
Collect elements of the iterator into an array. This is generally the
last function called.

```v
out := viter.iter_int([1, 2, 3]).collect()
println(out) // [1, 2, 3]
```

### count
```
iter.count()
```
Consume the iterator and returns the number of elements.

```v
out := viter.iter_int([1, 2, 3]).count()

println(out) // 3
```

### cycle
```
iter.cycle()
```
Continuously repeat the iterator forever. Returns `none` if the iterator
has nothing to cycle. This method is usually used with [take](#take).

```v
mut iter := viter.iter_int([1, 2, 3]).cycle()

println(iter.next()) // Option(1)
println(iter.next()) // Option(2)
println(iter.next()) // Option(3)
println(iter.next()) // Option(1)
println(iter.next()) // Option(2)
```

### debug
```
iter.debug()
```
Print the element to stderr and continue iterating. This is a simpler
way to debug than using [tap](#tap).

```v
mut iter := viter.iter_int([1, 2]).debug()

iter.next() ? // array -> 1
iter.next() ? // array -> 2
```

### every
```
iter.every(step int)
```
Skip every `step` elements in the iterator.

```v
mut iter := viter.iter_int([1, 2, 3, 4, 5]).every(2)

println(iter.next()) // Option(1)
println(iter.next()) // Option(3)
println(iter.next()) // Option(5)
println(iter.next()) // none
```

### filter
```
iter.filter(filter_fn fn(<type>) bool)
```
Filter the iterator to elements that return `true` from the `filter_fn`.

```v
mut iter := viter.iter_int([1, 2, 3, 4, 5]).filter(fn (i int) bool {
    return i % 2 == 0
})

println(iter.next()) // Option(2)
println(iter.next()) // Option(4)
println(iter.next()) // none
```

### fold
```
iter.fold(init <type>, fold_fn fn(acc <type>, elem <type>) <type>)
```
Apply a function on each element in the iterator, accumulating the
result. Returns the final accumulation. `init` is the initial value
for the accumulator, `acc` is the current accumulation value, and `elem`
is the current iterator value.

```v
out := viter.iter_int([1, 2, 3]).fold(0, fn(acc int, elem int) int {
    return acc + elem
})

println(out) // 6
```

### map
```
iter.map_<type_out>(map_fn fn(<type_in>) <type_out>)
```
Transform each element.

```v
mut iter := viter.iter_int([1, 2, 3]).map_string(fn (i int) string {
    return '$i!'
})

println(iter.next()) // Option('1!')
println(iter.next()) // Option('2!')
println(iter.next()) // Option('3!')
println(iter.next()) // none
```

### rev
```
iter.rev()
```
Reverse an iterator.

```v
mut iter := viter.iter_int([1, 2, 3]).rev()

println(iter.next()) // Option(3)
println(iter.next()) // Option(2)
println(iter.next()) // Option(1)
println(iter.next()) // none
```

### skip
```
iter.skip(num int)
```
Skip `num` elements.

```v
mut iter := viter.iter_int([1, 2, 3, 4, 5]).skip(3)

println(iter.next()) // Option(4)
println(iter.next()) // Option(5)
println(iter.next()) // none
```

### skip_while
```
iter.skip_while(pred fn(<type>) bool)
```
Skip elements while the predicate `pred` returns `true`.

```v
mut iter := viter.iter_int([1, 2, 3, 4, 5]).skip_while(fn (i int) bool {
    return i < 4
})

println(iter.next()) // Option(4)
println(iter.next()) // Option(5)
println(iter.next()) // none
```

### take
```
iter.take(num int)
```
Truncate the iterator to at most `num` elements.

```v
mut iter := viter.iter_int([1, 2, 3, 4, 5]).take(2)

println(iter.next()) // Option(1)
println(iter.next()) // Option(2)
println(iter.next()) // none
```

### take_while
```
iter.take_while(pred fn(<type>) bool)
```
Take elements while the predicate `pred` returns `true`.

```v
mut iter := viter.iter_int([1, 2, 3, 4, 5]).take_while(fn (i int) bool {
    return i <= 2
})

println(iter.next()) // Option(1)
println(iter.next()) // Option(2)
println(iter.next()) // none
```

### tap
```
iter.tap(f fn(<type>))
```
Provides an easy way to debug iterator chains. Because closures are not
implemented, the only use for this function is to `println` the element.

```v
mut iter := viter.iter_int([1, 2, 3]).tap(fn (i int) {
    println(i)
})

iter.next() ? // 1
iter.next() ? // 2
iter.next() ? // 3
```

### windows
```
iter.windows(size int)
```
Iterate over a sliding window of elements. If the iterator has less than
`size` elements, `none` will be returned.

```v
mut iter := viter.iter_int([1, 2, 3, 4, 5]).windows(3)

println(iter.next()) // Option([1, 2, 3])
println(iter.next()) // Option([2, 3, 4])
println(iter.next()) // Option([3, 4, 5])
println(iter.next()) // none
```
