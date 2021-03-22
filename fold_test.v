module viter

fn test_fold_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data)
	assert '54321!' == iter.fold('!', fn (acc string, x string) string {
		return x + acc
	})
}

fn test_fold_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data)
	assert 15 == iter.fold(0, fn (acc int, x int) int {
		return acc + x
	})
}

fn test_fold_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data)
	assert true == iter.fold(false, fn (acc bool, x bool) bool {
		return acc || x
	})
}
