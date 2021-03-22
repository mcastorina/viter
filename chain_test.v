module viter

fn test_chain_int() ? {
	data1 := [1, 2, 3]
	data2 := [4, 5]
	mut iter := iter_int(data1).chain(iter_int(data2))
	assert iter.next() ? == 1
	assert iter.next() ? == 2
	assert iter.next() ? == 3
	assert iter.next() ? == 4
	assert iter.next() ? == 5
	if _ := iter.next() {
		assert false
	}
}

fn test_chain_int_arr() ? {
	data1 := [1, 2, 3]
	data2 := [4, 5]
	mut iter := iter_int(data1).chain_arr(data2)
	assert iter.next() ? == 1
	assert iter.next() ? == 2
	assert iter.next() ? == 3
	assert iter.next() ? == 4
	assert iter.next() ? == 5
	if _ := iter.next() {
		assert false
	}
}
