# viter
Iterators for the [V Programming Language](https://github.com/vlang/v).

## Example Usage

```v
import viter

fn main() {
	data := [1, 2, 3, 4, 5]

	out := viter.iter_int(data)
		.skip(1)
		.filter(fn (i int) bool { return i % 2 == 1 })
		.map_string(fn (i int) string { return '$i!' })
		.collect()

	println(out) // ['3!', '5!']
}
```

## Supported Types
Common V primitive types are supported. You cannot use this module with
custom types (yet). If you would like another primitive type supported,
please open an issue.

* `bool`
* `string`
* `int`
* `byte`
* `rune`
* `f64`

## Methods
A `iter_<type>` function is provided to convert an array of `<type>`
to a `viter` iterator. Example: `viter.iter_byte([byte(1) 3 3 7])`.

If a method transforms the data, the output type should be appended to
the function name (e.g. `map_string`).

The currently implemented methods are:

* `filter`
* `map`
* `skip`
* `every`
* `collect`

## Speed
This module has ~5k generated lines of code, which means compilation
may be noticeably slower but still less than 1s in debug mode.

This module uses lazy iterator evaluation, meaning there are no
intermediate buffers. Each transformation is applied on the element as
it is iterated over (or once collected).
