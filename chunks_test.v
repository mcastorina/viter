module viter

fn test_chunks_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data).chunks(2)
	assert iter.next() ? == ['1', '2']
	assert iter.next() ? == ['3', '4']
	assert iter.next() ? == ['5']
	if _ := iter.next() {
		assert false
	}
}

fn test_chunks_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data).chunks(4)
	assert iter.next() ? == [1, 2, 3, 4]
	assert iter.next() ? == [5]
	if _ := iter.next() {
		assert false
	}
}

fn test_chunks_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data).chunks(3)
	assert iter.next() ? == [true, false, true]
	assert iter.next() ? == [true, false]
	if _ := iter.next() {
		assert false
	}
}
