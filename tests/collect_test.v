import viter

fn test_collect_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := viter.iter_string(data)
	assert data == iter.collect()
}

fn test_collect_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := viter.iter_int(data)
	assert data == iter.collect()
}

fn test_collect_bool() ? {
	data := [true, false, true, true, false]
	mut iter := viter.iter_bool(data)
	assert data == iter.collect()
}
