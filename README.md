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
