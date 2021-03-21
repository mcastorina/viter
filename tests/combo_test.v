import viter

fn test_filter_map() {
	data := [1, 2, 3, 4, 5]
	out := viter.iter_int(data).filter(fn (i int) bool {
		return i % 2 == 1
	}).map_string(fn (i int) string {
		return '$i!'
	}).collect()
	assert out == ['1!', '3!', '5!']
}

fn test_skip_filter() {
	data := [1, 2, 3, 4, 5]
	out := viter.iter_int(data).skip(1).filter(fn (i int) bool {
		return i % 2 == 1
	}).collect()
	assert out == [3, 5]
}
