module viter

// TODO: use a counter when closure are implemented

fn test_tap_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data).tap(fn (i string) {})
	assert iter.next() ? == '1'
	assert iter.next() ? == '2'
	assert iter.next() ? == '3'
	assert iter.next() ? == '4'
	assert iter.next() ? == '5'
	if _ := iter.next() {
		assert false
	}
}

fn test_tap_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data).tap(fn (i int) {})
	assert iter.next() ? == 1
	assert iter.next() ? == 2
	assert iter.next() ? == 3
	assert iter.next() ? == 4
	assert iter.next() ? == 5
	if _ := iter.next() {
		assert false
	}
}

fn test_tap_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data).tap(fn (i bool) {})
	assert iter.next() ? == true
	assert iter.next() ? == false
	assert iter.next() ? == true
	assert iter.next() ? == true
	assert iter.next() ? == false
	if _ := iter.next() {
		assert false
	}
}
