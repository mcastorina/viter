module viter

fn test_count_string() ? {
	data := ['1', '2', '3']
	assert iter_string(data).count() == 3
}

fn test_count_int() ? {
	data := [1, 2, 3, 4, 5]
	assert iter_int(data).count() == 5
}

fn test_count_bool() ? {
	data := []bool{}
	assert iter_bool(data).count() == 0
}
