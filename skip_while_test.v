module viter

fn test_skip_while_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data).skip_while(fn (i string) bool {
		return i.int() < 4
	})
	assert iter.next() ? == '4'
	assert iter.next() ? == '5'
	if _ := iter.next() {
		assert false
	}
}

fn test_skip_while_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data).skip_while(fn (i int) bool {
		return i < 10
	})
	if _ := iter.next() {
		assert false
	}
}

fn test_skip_while_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data).skip_while(fn (i bool) bool {
		return !i
	})
	assert iter.next() ? == true
	assert iter.next() ? == false
	assert iter.next() ? == true
	assert iter.next() ? == true
	assert iter.next() ? == false
	if _ := iter.next() {
		assert false
	}
}
