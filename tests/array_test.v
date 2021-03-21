import viter

fn test_iter_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := viter.iter_string(data)

	assert iter.next() ? == '1'
	assert iter.next() ? == '2'
	assert iter.next() ? == '3'
	assert iter.next() ? == '4'
	assert iter.next() ? == '5'
	if _ := iter.next() {
		assert false
	}
}

fn test_iter_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := viter.iter_int(data)

	assert iter.next() ? == 1
	assert iter.next() ? == 2
	assert iter.next() ? == 3
	assert iter.next() ? == 4
	assert iter.next() ? == 5
	if _ := iter.next() {
		assert false
	}
}

fn test_iter_bool() ? {
	data := [true, false, true, true, false]
	mut iter := viter.iter_bool(data)

	assert iter.next() ? == true
	assert iter.next() ? == false
	assert iter.next() ? == true
	assert iter.next() ? == true
	assert iter.next() ? == false
	if _ := iter.next() {
		assert false
	}
}
