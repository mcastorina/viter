module viter

fn test_filter_map() {
	data := [1, 2, 3, 4, 5]
	out := iter_int(data).filter(fn (i int) bool {
		return i % 2 == 1
	}).map_string(fn (i int) string {
		return '$i!'
	}).collect()
	assert out == ['1!', '3!', '5!']
}

fn test_skip_filter() {
	data := [1, 2, 3, 4, 5]
	out := iter_int(data).skip(1).filter(fn (i int) bool {
		return i % 2 == 1
	}).collect()
	assert out == [3, 5]
}

fn test_skip_while_every_filter() {
	data := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
	// simplified for this test
	is_prime := fn (i int) bool {
		if i < 2 {
			return false
		}
		if i == 2 || i == 3 || i == 5 {
			return true
		}
		return i % 2 != 0 && i % 3 != 0 && i % 5 != 0
	}
	out := iter_int(data).skip_while(fn (i int) bool {
		return i < 3
	}).every(2).filter(is_prime).collect()
	assert out == [3, 5, 7, 11, 13]
}
