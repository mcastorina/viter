module viter

fn test_take_while_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data).take_while(fn (i string) bool {
		return i.int() < 4
	})
	assert iter.next() ? == '1'
	assert iter.next() ? == '2'
	assert iter.next() ? == '3'
	if _ := iter.next() {
		assert false
	}
}

fn test_take_while_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data).take_while(fn (i int) bool {
		return i < 10
	})
	assert iter.next() ? == 1
	assert iter.next() ? == 2
	assert iter.next() ? == 3
	assert iter.next() ? == 4
	assert iter.next() ? == 5
	if _ := iter.next() {
		assert false
	}
}

fn test_take_while_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data).take_while(fn (i bool) bool {
		return !i
	})
	if _ := iter.next() {
		assert false
	}
}
