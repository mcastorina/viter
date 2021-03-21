module viter

fn test_every_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data).every(2)
	assert iter.next() ? == '1'
	assert iter.next() ? == '3'
	assert iter.next() ? == '5'
	if _ := iter.next() {
		assert false
	}
}

fn test_every_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data).every(4)
	assert iter.next() ? == 1
	assert iter.next() ? == 5
	if _ := iter.next() {
		assert false
	}
}

fn test_every_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data).every(3)
	assert iter.next() ? == true
	assert iter.next() ? == true
	if _ := iter.next() {
		assert false
	}
}
