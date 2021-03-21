import viter

fn test_skip_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := viter.iter_string(data).skip(2)
	assert iter.next() ? == '3'
	assert iter.next() ? == '4'
	assert iter.next() ? == '5'
	if _ := iter.next() {
		assert false
	}
}

fn test_skip_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := viter.iter_int(data).skip(4)
	assert iter.next() ? == 5
	if _ := iter.next() {
		assert false
	}
}

fn test_skip_bool() ? {
	data := [true, false, true, true, false]
	mut iter := viter.iter_bool(data).skip(3)
	assert iter.next() ? == true
	assert iter.next() ? == false
	if _ := iter.next() {
		assert false
	}
}
