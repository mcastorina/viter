module viter

fn test_find_string() ? {
	data := ['1', '2', '3']
	assert iter_string(data).find('2') ? == '2'
}

fn test_find_int() ? {
	data := [1, 2, 1, 4, 5]
	mut iter := iter_int(data)
	assert iter.find(1) ? == 1
	assert iter.find(1) ? == 1
	if _ := iter.find(2) {
		assert false
	}
}

fn test_find_bool() ? {
	data := []bool{}
	if _ := iter_bool(data).find(false) {
		assert false
	}
}
