module viter

fn test_take_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data).take(3)
	assert iter.next() ? == '1'
	assert iter.next() ? == '2'
	assert iter.next() ? == '3'
	if _ := iter.next() {
		assert false
	}
}

fn test_take_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data).take(10)
	assert iter.next() ? == 1
	assert iter.next() ? == 2
	assert iter.next() ? == 3
	assert iter.next() ? == 4
	assert iter.next() ? == 5
	if _ := iter.next() {
		assert false
	}
}

fn test_take_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data).take(2)
	assert iter.next() ? == true
	assert iter.next() ? == false
	if _ := iter.next() {
		assert false
	}
}
