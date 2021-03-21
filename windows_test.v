module viter

fn test_windows_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data).windows(2)
	assert iter.next() ? == ['1' '2']
	assert iter.next() ? == ['2' '3']
	assert iter.next() ? == ['3' '4']
	assert iter.next() ? == ['4' '5']
	if _ := iter.next() {
		assert false
	}
}

fn test_windows_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data).windows(4)
	assert iter.next() ? == [1 2 3 4]
	assert iter.next() ? == [2 3 4 5]
	if _ := iter.next() {
		assert false
	}
}

fn test_windows_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data).windows(3)
	assert iter.next() ? == [true false true]
	assert iter.next() ? == [false true true]
	assert iter.next() ? == [true true false]
	if _ := iter.next() {
		assert false
	}
}
