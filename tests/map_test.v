import viter

fn test_map_string_int() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := viter.iter_string(data).map_int(fn (i string) int {
		return i.int() + 1
	})
	assert iter.next() ? == 2
	assert iter.next() ? == 3
	assert iter.next() ? == 4
	assert iter.next() ? == 5
	assert iter.next() ? == 6
	if _ := iter.next() {
		assert false
	}
}

fn test_map_string_string() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := viter.iter_string(data).map_string(fn (i string) string {
		return '$i!'
	})
	assert iter.next() ? == '1!'
	assert iter.next() ? == '2!'
	assert iter.next() ? == '3!'
	assert iter.next() ? == '4!'
	assert iter.next() ? == '5!'
	if _ := iter.next() {
		assert false
	}
}

fn test_map_string_bool() ? {
	data := ['1', '2', '3', '4', '5']
	mut iter := viter.iter_string(data).map_bool(fn (i string) bool {
		return i.int() >= 3
	})
	assert iter.next() ? == false
	assert iter.next() ? == false
	assert iter.next() ? == true
	assert iter.next() ? == true
	assert iter.next() ? == true
	if _ := iter.next() {
		assert false
	}
}

fn test_map_int_string() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := viter.iter_int(data).map_string(fn (i int) string {
		return '$i!'
	})
	assert iter.next() ? == '1!'
	assert iter.next() ? == '2!'
	assert iter.next() ? == '3!'
	assert iter.next() ? == '4!'
	assert iter.next() ? == '5!'
	if _ := iter.next() {
		assert false
	}
}

fn test_map_int_int() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := viter.iter_int(data).map_int(fn (i int) int {
		return i + 1
	})
	assert iter.next() ? == 2
	assert iter.next() ? == 3
	assert iter.next() ? == 4
	assert iter.next() ? == 5
	assert iter.next() ? == 6
	if _ := iter.next() {
		assert false
	}
}

fn test_map_int_bool() ? {
	data := [1, 2, 3, 4, 5]
	mut iter := viter.iter_int(data).map_bool(fn (i int) bool {
		return i >= 3
	})
	assert iter.next() ? == false
	assert iter.next() ? == false
	assert iter.next() ? == true
	assert iter.next() ? == true
	assert iter.next() ? == true
	if _ := iter.next() {
		assert false
	}
}

fn test_map_bool_string() ? {
	data := [true, false, true, true, false]
	mut iter := viter.iter_bool(data).map_string(fn (i bool) string {
		return if i { 'yay' } else { 'boo' }
	})
	assert iter.next() ? == 'yay'
	assert iter.next() ? == 'boo'
	assert iter.next() ? == 'yay'
	assert iter.next() ? == 'yay'
	assert iter.next() ? == 'boo'
	if _ := iter.next() {
		assert false
	}
}

fn test_map_bool_int() ? {
	data := [true, false, true, true, false]
	mut iter := viter.iter_bool(data).map_int(fn (i bool) int {
		return if i { 1 } else { 0 }
	})
	assert iter.next() ? == 1
	assert iter.next() ? == 0
	assert iter.next() ? == 1
	assert iter.next() ? == 1
	assert iter.next() ? == 0
	if _ := iter.next() {
		assert false
	}
}

fn test_map_bool_bool() ? {
	data := [true, false, true, true, false]
	mut iter := viter.iter_bool(data).map_bool(fn (i bool) bool {
		return !i
	})
	assert iter.next() ? == false
	assert iter.next() ? == true
	assert iter.next() ? == false
	assert iter.next() ? == false
	assert iter.next() ? == true
	if _ := iter.next() {
		assert false
	}
}
