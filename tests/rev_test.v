import viter

fn test_rev_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := viter.iter_string(data).rev()
	assert iter.next() ? == '5'
	assert iter.next() ? == '4'
	assert iter.next() ? == '3'
	assert iter.next() ? == '2'
	assert iter.next() ? == '1'
	if _ := iter.next() {
		assert false
	}
}

fn test_rev_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := viter.iter_int(data).rev()
	assert iter.next() ? == 5
	assert iter.next() ? == 4
	assert iter.next() ? == 3
	assert iter.next() ? == 2
	assert iter.next() ? == 1
	if _ := iter.next() {
		assert false
	}
}
