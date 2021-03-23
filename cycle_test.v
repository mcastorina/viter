module viter

fn test_cycle_string() ? {
	data := ['1', '2', '3']
	mut iter := iter_string(data).cycle()
	assert iter.next() ? == '1'
	assert iter.next() ? == '2'
	assert iter.next() ? == '3'
	assert iter.next() ? == '1'
	assert iter.next() ? == '2'
	assert iter.next() ? == '3'
	assert iter.next() ? == '1'
}

fn test_cycle_int() ? {
	data := [1, 0]
	mut iter := iter_int(data).cycle()
	assert iter.next() ? == 1
	assert iter.next() ? == 0
	assert iter.next() ? == 1
	assert iter.next() ? == 0
	assert iter.next() ? == 1
	assert iter.next() ? == 0
	assert iter.next() ? == 1
	assert iter.next() ? == 0
}

fn test_cycle_bool() ? {
	data := []bool{}
	mut iter := iter_bool(data).cycle()
	if _ := iter.next() {
		assert false
	}
}
