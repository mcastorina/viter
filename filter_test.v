module viter

fn test_filter_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := iter_string(data).filter(fn (i string) bool {
		return i == '3'
	})
	assert iter.next() ? == '3'
	if _ := iter.next() {
		assert false
	}
}

fn test_filter_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := iter_int(data).filter(fn (i int) bool {
		return i % 2 == 0
	})
	assert iter.next() ? == 2
	assert iter.next() ? == 4
	if _ := iter.next() {
		assert false
	}
}

fn test_filter_bool() ? {
	data := [true, false, true, true, false]
	mut iter := iter_bool(data).filter(fn (i bool) bool {
		return i
	})
	assert iter.next() ? == true
	assert iter.next() ? == true
	assert iter.next() ? == true
	if _ := iter.next() {
		assert false
	}
}
