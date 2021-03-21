module viter

interface BoolIterator { next() ?bool }
interface StringIterator { next() ?string }
interface IntIterator { next() ?int }
interface ByteIterator { next() ?byte }
interface RuneIterator { next() ?rune }
interface F64Iterator { next() ?f64 }
interface Bool1DArrayIterator { next() ?[]bool }
interface String1DArrayIterator { next() ?[]string }
interface Int1DArrayIterator { next() ?[]int }
interface Byte1DArrayIterator { next() ?[]byte }
interface Rune1DArrayIterator { next() ?[]rune }
interface F641DArrayIterator { next() ?[]f64 }

pub struct BoolArrayIterator {
	data []bool
mut:
	index int
}

pub fn (mut i BoolArrayIterator) next() ?bool {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_bool(arr []bool) &BoolArrayIterator {
	return &BoolArrayIterator{
		data: arr
	}
}

pub struct StringArrayIterator {
	data []string
mut:
	index int
}

pub fn (mut i StringArrayIterator) next() ?string {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_string(arr []string) &StringArrayIterator {
	return &StringArrayIterator{
		data: arr
	}
}

pub struct IntArrayIterator {
	data []int
mut:
	index int
}

pub fn (mut i IntArrayIterator) next() ?int {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_int(arr []int) &IntArrayIterator {
	return &IntArrayIterator{
		data: arr
	}
}

pub struct ByteArrayIterator {
	data []byte
mut:
	index int
}

pub fn (mut i ByteArrayIterator) next() ?byte {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_byte(arr []byte) &ByteArrayIterator {
	return &ByteArrayIterator{
		data: arr
	}
}

pub struct RuneArrayIterator {
	data []rune
mut:
	index int
}

pub fn (mut i RuneArrayIterator) next() ?rune {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_rune(arr []rune) &RuneArrayIterator {
	return &RuneArrayIterator{
		data: arr
	}
}

pub struct F64ArrayIterator {
	data []f64
mut:
	index int
}

pub fn (mut i F64ArrayIterator) next() ?f64 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_f64(arr []f64) &F64ArrayIterator {
	return &F64ArrayIterator{
		data: arr
	}
}

pub struct Bool1DArrayArrayIterator {
	data [][]bool
mut:
	index int
}

pub fn (mut i Bool1DArrayArrayIterator) next() ?[]bool {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_bool_arr(arr [][]bool) &Bool1DArrayArrayIterator {
	return &Bool1DArrayArrayIterator{
		data: arr
	}
}

pub struct String1DArrayArrayIterator {
	data [][]string
mut:
	index int
}

pub fn (mut i String1DArrayArrayIterator) next() ?[]string {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_string_arr(arr [][]string) &String1DArrayArrayIterator {
	return &String1DArrayArrayIterator{
		data: arr
	}
}

pub struct Int1DArrayArrayIterator {
	data [][]int
mut:
	index int
}

pub fn (mut i Int1DArrayArrayIterator) next() ?[]int {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_int_arr(arr [][]int) &Int1DArrayArrayIterator {
	return &Int1DArrayArrayIterator{
		data: arr
	}
}

pub struct Byte1DArrayArrayIterator {
	data [][]byte
mut:
	index int
}

pub fn (mut i Byte1DArrayArrayIterator) next() ?[]byte {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_byte_arr(arr [][]byte) &Byte1DArrayArrayIterator {
	return &Byte1DArrayArrayIterator{
		data: arr
	}
}

pub struct Rune1DArrayArrayIterator {
	data [][]rune
mut:
	index int
}

pub fn (mut i Rune1DArrayArrayIterator) next() ?[]rune {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_rune_arr(arr [][]rune) &Rune1DArrayArrayIterator {
	return &Rune1DArrayArrayIterator{
		data: arr
	}
}

pub struct F641DArrayArrayIterator {
	data [][]f64
mut:
	index int
}

pub fn (mut i F641DArrayArrayIterator) next() ?[]f64 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_f64_arr(arr [][]f64) &F641DArrayArrayIterator {
	return &F641DArrayArrayIterator{
		data: arr
	}
}

pub fn (mut i BoolArrayIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolArrayIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringArrayIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntArrayIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteArrayIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneArrayIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64ArrayIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayArrayIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayArrayIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayArrayIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayArrayIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayArrayIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayArrayIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayArrayIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayArrayIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayArrayIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayArrayIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayArrayIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayArrayIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub struct BoolFilterIterator {
	filter_fn fn(_ bool) bool
mut:
	iterator BoolIterator
}

pub fn (mut i BoolFilterIterator) next() ?bool {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct StringFilterIterator {
	filter_fn fn(_ string) bool
mut:
	iterator StringIterator
}

pub fn (mut i StringFilterIterator) next() ?string {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct IntFilterIterator {
	filter_fn fn(_ int) bool
mut:
	iterator IntIterator
}

pub fn (mut i IntFilterIterator) next() ?int {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct ByteFilterIterator {
	filter_fn fn(_ byte) bool
mut:
	iterator ByteIterator
}

pub fn (mut i ByteFilterIterator) next() ?byte {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct RuneFilterIterator {
	filter_fn fn(_ rune) bool
mut:
	iterator RuneIterator
}

pub fn (mut i RuneFilterIterator) next() ?rune {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct F64FilterIterator {
	filter_fn fn(_ f64) bool
mut:
	iterator F64Iterator
}

pub fn (mut i F64FilterIterator) next() ?f64 {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct Bool1DArrayFilterIterator {
	filter_fn fn(_ []bool) bool
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayFilterIterator) next() ?[]bool {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct String1DArrayFilterIterator {
	filter_fn fn(_ []string) bool
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayFilterIterator) next() ?[]string {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct Int1DArrayFilterIterator {
	filter_fn fn(_ []int) bool
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayFilterIterator) next() ?[]int {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct Byte1DArrayFilterIterator {
	filter_fn fn(_ []byte) bool
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayFilterIterator) next() ?[]byte {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct Rune1DArrayFilterIterator {
	filter_fn fn(_ []rune) bool
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayFilterIterator) next() ?[]rune {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub struct F641DArrayFilterIterator {
	filter_fn fn(_ []f64) bool
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayFilterIterator) next() ?[]f64 {
	for true {
		item := i.iterator.next()?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i BoolFilterIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolFilterIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringFilterIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntFilterIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteFilterIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneFilterIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64FilterIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayFilterIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayFilterIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayFilterIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayFilterIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayFilterIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayFilterIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayFilterIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayFilterIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayFilterIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayFilterIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayFilterIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayFilterIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub struct BoolBoolMapIterator {
	map_fn fn(_ bool) bool
mut:
	iterator BoolIterator
}

pub fn (mut i BoolBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolStringMapIterator {
	map_fn fn(_ bool) string
mut:
	iterator BoolIterator
}

pub fn (mut i BoolStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolIntMapIterator {
	map_fn fn(_ bool) int
mut:
	iterator BoolIterator
}

pub fn (mut i BoolIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolByteMapIterator {
	map_fn fn(_ bool) byte
mut:
	iterator BoolIterator
}

pub fn (mut i BoolByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolRuneMapIterator {
	map_fn fn(_ bool) rune
mut:
	iterator BoolIterator
}

pub fn (mut i BoolRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolF64MapIterator {
	map_fn fn(_ bool) f64
mut:
	iterator BoolIterator
}

pub fn (mut i BoolF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolBool1DArrayMapIterator {
	map_fn fn(_ bool) []bool
mut:
	iterator BoolIterator
}

pub fn (mut i BoolBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolString1DArrayMapIterator {
	map_fn fn(_ bool) []string
mut:
	iterator BoolIterator
}

pub fn (mut i BoolString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolInt1DArrayMapIterator {
	map_fn fn(_ bool) []int
mut:
	iterator BoolIterator
}

pub fn (mut i BoolInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolByte1DArrayMapIterator {
	map_fn fn(_ bool) []byte
mut:
	iterator BoolIterator
}

pub fn (mut i BoolByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolRune1DArrayMapIterator {
	map_fn fn(_ bool) []rune
mut:
	iterator BoolIterator
}

pub fn (mut i BoolRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct BoolF641DArrayMapIterator {
	map_fn fn(_ bool) []f64
mut:
	iterator BoolIterator
}

pub fn (mut i BoolF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringBoolMapIterator {
	map_fn fn(_ string) bool
mut:
	iterator StringIterator
}

pub fn (mut i StringBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringStringMapIterator {
	map_fn fn(_ string) string
mut:
	iterator StringIterator
}

pub fn (mut i StringStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringIntMapIterator {
	map_fn fn(_ string) int
mut:
	iterator StringIterator
}

pub fn (mut i StringIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringByteMapIterator {
	map_fn fn(_ string) byte
mut:
	iterator StringIterator
}

pub fn (mut i StringByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringRuneMapIterator {
	map_fn fn(_ string) rune
mut:
	iterator StringIterator
}

pub fn (mut i StringRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringF64MapIterator {
	map_fn fn(_ string) f64
mut:
	iterator StringIterator
}

pub fn (mut i StringF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringBool1DArrayMapIterator {
	map_fn fn(_ string) []bool
mut:
	iterator StringIterator
}

pub fn (mut i StringBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringString1DArrayMapIterator {
	map_fn fn(_ string) []string
mut:
	iterator StringIterator
}

pub fn (mut i StringString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringInt1DArrayMapIterator {
	map_fn fn(_ string) []int
mut:
	iterator StringIterator
}

pub fn (mut i StringInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringByte1DArrayMapIterator {
	map_fn fn(_ string) []byte
mut:
	iterator StringIterator
}

pub fn (mut i StringByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringRune1DArrayMapIterator {
	map_fn fn(_ string) []rune
mut:
	iterator StringIterator
}

pub fn (mut i StringRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct StringF641DArrayMapIterator {
	map_fn fn(_ string) []f64
mut:
	iterator StringIterator
}

pub fn (mut i StringF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntBoolMapIterator {
	map_fn fn(_ int) bool
mut:
	iterator IntIterator
}

pub fn (mut i IntBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntStringMapIterator {
	map_fn fn(_ int) string
mut:
	iterator IntIterator
}

pub fn (mut i IntStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntIntMapIterator {
	map_fn fn(_ int) int
mut:
	iterator IntIterator
}

pub fn (mut i IntIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntByteMapIterator {
	map_fn fn(_ int) byte
mut:
	iterator IntIterator
}

pub fn (mut i IntByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntRuneMapIterator {
	map_fn fn(_ int) rune
mut:
	iterator IntIterator
}

pub fn (mut i IntRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntF64MapIterator {
	map_fn fn(_ int) f64
mut:
	iterator IntIterator
}

pub fn (mut i IntF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntBool1DArrayMapIterator {
	map_fn fn(_ int) []bool
mut:
	iterator IntIterator
}

pub fn (mut i IntBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntString1DArrayMapIterator {
	map_fn fn(_ int) []string
mut:
	iterator IntIterator
}

pub fn (mut i IntString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntInt1DArrayMapIterator {
	map_fn fn(_ int) []int
mut:
	iterator IntIterator
}

pub fn (mut i IntInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntByte1DArrayMapIterator {
	map_fn fn(_ int) []byte
mut:
	iterator IntIterator
}

pub fn (mut i IntByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntRune1DArrayMapIterator {
	map_fn fn(_ int) []rune
mut:
	iterator IntIterator
}

pub fn (mut i IntRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct IntF641DArrayMapIterator {
	map_fn fn(_ int) []f64
mut:
	iterator IntIterator
}

pub fn (mut i IntF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteBoolMapIterator {
	map_fn fn(_ byte) bool
mut:
	iterator ByteIterator
}

pub fn (mut i ByteBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteStringMapIterator {
	map_fn fn(_ byte) string
mut:
	iterator ByteIterator
}

pub fn (mut i ByteStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteIntMapIterator {
	map_fn fn(_ byte) int
mut:
	iterator ByteIterator
}

pub fn (mut i ByteIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteByteMapIterator {
	map_fn fn(_ byte) byte
mut:
	iterator ByteIterator
}

pub fn (mut i ByteByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteRuneMapIterator {
	map_fn fn(_ byte) rune
mut:
	iterator ByteIterator
}

pub fn (mut i ByteRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteF64MapIterator {
	map_fn fn(_ byte) f64
mut:
	iterator ByteIterator
}

pub fn (mut i ByteF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteBool1DArrayMapIterator {
	map_fn fn(_ byte) []bool
mut:
	iterator ByteIterator
}

pub fn (mut i ByteBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteString1DArrayMapIterator {
	map_fn fn(_ byte) []string
mut:
	iterator ByteIterator
}

pub fn (mut i ByteString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteInt1DArrayMapIterator {
	map_fn fn(_ byte) []int
mut:
	iterator ByteIterator
}

pub fn (mut i ByteInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteByte1DArrayMapIterator {
	map_fn fn(_ byte) []byte
mut:
	iterator ByteIterator
}

pub fn (mut i ByteByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteRune1DArrayMapIterator {
	map_fn fn(_ byte) []rune
mut:
	iterator ByteIterator
}

pub fn (mut i ByteRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct ByteF641DArrayMapIterator {
	map_fn fn(_ byte) []f64
mut:
	iterator ByteIterator
}

pub fn (mut i ByteF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneBoolMapIterator {
	map_fn fn(_ rune) bool
mut:
	iterator RuneIterator
}

pub fn (mut i RuneBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneStringMapIterator {
	map_fn fn(_ rune) string
mut:
	iterator RuneIterator
}

pub fn (mut i RuneStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneIntMapIterator {
	map_fn fn(_ rune) int
mut:
	iterator RuneIterator
}

pub fn (mut i RuneIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneByteMapIterator {
	map_fn fn(_ rune) byte
mut:
	iterator RuneIterator
}

pub fn (mut i RuneByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneRuneMapIterator {
	map_fn fn(_ rune) rune
mut:
	iterator RuneIterator
}

pub fn (mut i RuneRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneF64MapIterator {
	map_fn fn(_ rune) f64
mut:
	iterator RuneIterator
}

pub fn (mut i RuneF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneBool1DArrayMapIterator {
	map_fn fn(_ rune) []bool
mut:
	iterator RuneIterator
}

pub fn (mut i RuneBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneString1DArrayMapIterator {
	map_fn fn(_ rune) []string
mut:
	iterator RuneIterator
}

pub fn (mut i RuneString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneInt1DArrayMapIterator {
	map_fn fn(_ rune) []int
mut:
	iterator RuneIterator
}

pub fn (mut i RuneInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneByte1DArrayMapIterator {
	map_fn fn(_ rune) []byte
mut:
	iterator RuneIterator
}

pub fn (mut i RuneByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneRune1DArrayMapIterator {
	map_fn fn(_ rune) []rune
mut:
	iterator RuneIterator
}

pub fn (mut i RuneRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct RuneF641DArrayMapIterator {
	map_fn fn(_ rune) []f64
mut:
	iterator RuneIterator
}

pub fn (mut i RuneF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64BoolMapIterator {
	map_fn fn(_ f64) bool
mut:
	iterator F64Iterator
}

pub fn (mut i F64BoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64StringMapIterator {
	map_fn fn(_ f64) string
mut:
	iterator F64Iterator
}

pub fn (mut i F64StringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64IntMapIterator {
	map_fn fn(_ f64) int
mut:
	iterator F64Iterator
}

pub fn (mut i F64IntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64ByteMapIterator {
	map_fn fn(_ f64) byte
mut:
	iterator F64Iterator
}

pub fn (mut i F64ByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64RuneMapIterator {
	map_fn fn(_ f64) rune
mut:
	iterator F64Iterator
}

pub fn (mut i F64RuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64F64MapIterator {
	map_fn fn(_ f64) f64
mut:
	iterator F64Iterator
}

pub fn (mut i F64F64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64Bool1DArrayMapIterator {
	map_fn fn(_ f64) []bool
mut:
	iterator F64Iterator
}

pub fn (mut i F64Bool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64String1DArrayMapIterator {
	map_fn fn(_ f64) []string
mut:
	iterator F64Iterator
}

pub fn (mut i F64String1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64Int1DArrayMapIterator {
	map_fn fn(_ f64) []int
mut:
	iterator F64Iterator
}

pub fn (mut i F64Int1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64Byte1DArrayMapIterator {
	map_fn fn(_ f64) []byte
mut:
	iterator F64Iterator
}

pub fn (mut i F64Byte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64Rune1DArrayMapIterator {
	map_fn fn(_ f64) []rune
mut:
	iterator F64Iterator
}

pub fn (mut i F64Rune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F64F641DArrayMapIterator {
	map_fn fn(_ f64) []f64
mut:
	iterator F64Iterator
}

pub fn (mut i F64F641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayBoolMapIterator {
	map_fn fn(_ []bool) bool
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayStringMapIterator {
	map_fn fn(_ []bool) string
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayIntMapIterator {
	map_fn fn(_ []bool) int
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayByteMapIterator {
	map_fn fn(_ []bool) byte
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayRuneMapIterator {
	map_fn fn(_ []bool) rune
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayF64MapIterator {
	map_fn fn(_ []bool) f64
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayBool1DArrayMapIterator {
	map_fn fn(_ []bool) []bool
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayString1DArrayMapIterator {
	map_fn fn(_ []bool) []string
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayInt1DArrayMapIterator {
	map_fn fn(_ []bool) []int
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayByte1DArrayMapIterator {
	map_fn fn(_ []bool) []byte
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayRune1DArrayMapIterator {
	map_fn fn(_ []bool) []rune
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Bool1DArrayF641DArrayMapIterator {
	map_fn fn(_ []bool) []f64
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayBoolMapIterator {
	map_fn fn(_ []string) bool
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayStringMapIterator {
	map_fn fn(_ []string) string
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayIntMapIterator {
	map_fn fn(_ []string) int
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayByteMapIterator {
	map_fn fn(_ []string) byte
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayRuneMapIterator {
	map_fn fn(_ []string) rune
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayF64MapIterator {
	map_fn fn(_ []string) f64
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayBool1DArrayMapIterator {
	map_fn fn(_ []string) []bool
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayString1DArrayMapIterator {
	map_fn fn(_ []string) []string
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayInt1DArrayMapIterator {
	map_fn fn(_ []string) []int
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayByte1DArrayMapIterator {
	map_fn fn(_ []string) []byte
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayRune1DArrayMapIterator {
	map_fn fn(_ []string) []rune
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct String1DArrayF641DArrayMapIterator {
	map_fn fn(_ []string) []f64
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayBoolMapIterator {
	map_fn fn(_ []int) bool
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayStringMapIterator {
	map_fn fn(_ []int) string
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayIntMapIterator {
	map_fn fn(_ []int) int
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayByteMapIterator {
	map_fn fn(_ []int) byte
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayRuneMapIterator {
	map_fn fn(_ []int) rune
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayF64MapIterator {
	map_fn fn(_ []int) f64
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayBool1DArrayMapIterator {
	map_fn fn(_ []int) []bool
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayString1DArrayMapIterator {
	map_fn fn(_ []int) []string
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayInt1DArrayMapIterator {
	map_fn fn(_ []int) []int
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayByte1DArrayMapIterator {
	map_fn fn(_ []int) []byte
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayRune1DArrayMapIterator {
	map_fn fn(_ []int) []rune
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Int1DArrayF641DArrayMapIterator {
	map_fn fn(_ []int) []f64
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayBoolMapIterator {
	map_fn fn(_ []byte) bool
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayStringMapIterator {
	map_fn fn(_ []byte) string
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayIntMapIterator {
	map_fn fn(_ []byte) int
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayByteMapIterator {
	map_fn fn(_ []byte) byte
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayRuneMapIterator {
	map_fn fn(_ []byte) rune
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayF64MapIterator {
	map_fn fn(_ []byte) f64
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayBool1DArrayMapIterator {
	map_fn fn(_ []byte) []bool
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayString1DArrayMapIterator {
	map_fn fn(_ []byte) []string
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayInt1DArrayMapIterator {
	map_fn fn(_ []byte) []int
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayByte1DArrayMapIterator {
	map_fn fn(_ []byte) []byte
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayRune1DArrayMapIterator {
	map_fn fn(_ []byte) []rune
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Byte1DArrayF641DArrayMapIterator {
	map_fn fn(_ []byte) []f64
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayBoolMapIterator {
	map_fn fn(_ []rune) bool
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayStringMapIterator {
	map_fn fn(_ []rune) string
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayIntMapIterator {
	map_fn fn(_ []rune) int
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayByteMapIterator {
	map_fn fn(_ []rune) byte
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayRuneMapIterator {
	map_fn fn(_ []rune) rune
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayF64MapIterator {
	map_fn fn(_ []rune) f64
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayBool1DArrayMapIterator {
	map_fn fn(_ []rune) []bool
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayString1DArrayMapIterator {
	map_fn fn(_ []rune) []string
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayInt1DArrayMapIterator {
	map_fn fn(_ []rune) []int
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayByte1DArrayMapIterator {
	map_fn fn(_ []rune) []byte
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayRune1DArrayMapIterator {
	map_fn fn(_ []rune) []rune
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct Rune1DArrayF641DArrayMapIterator {
	map_fn fn(_ []rune) []f64
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayBoolMapIterator {
	map_fn fn(_ []f64) bool
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayBoolMapIterator) next() ?bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayStringMapIterator {
	map_fn fn(_ []f64) string
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayStringMapIterator) next() ?string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayIntMapIterator {
	map_fn fn(_ []f64) int
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayIntMapIterator) next() ?int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayByteMapIterator {
	map_fn fn(_ []f64) byte
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayByteMapIterator) next() ?byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayRuneMapIterator {
	map_fn fn(_ []f64) rune
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayRuneMapIterator) next() ?rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayF64MapIterator {
	map_fn fn(_ []f64) f64
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayF64MapIterator) next() ?f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayBool1DArrayMapIterator {
	map_fn fn(_ []f64) []bool
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) next() ?[]bool {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayString1DArrayMapIterator {
	map_fn fn(_ []f64) []string
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayString1DArrayMapIterator) next() ?[]string {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayInt1DArrayMapIterator {
	map_fn fn(_ []f64) []int
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) next() ?[]int {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayByte1DArrayMapIterator {
	map_fn fn(_ []f64) []byte
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) next() ?[]byte {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayRune1DArrayMapIterator {
	map_fn fn(_ []f64) []rune
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) next() ?[]rune {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub struct F641DArrayF641DArrayMapIterator {
	map_fn fn(_ []f64) []f64
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayF641DArrayMapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	return i.map_fn(item)
}

pub fn (mut i BoolBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64BoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64StringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64IntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64ByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64RuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64F64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64Bool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Bool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64String1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64String1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64Int1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Int1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64Byte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Byte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64Rune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64Rune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64F641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayBoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayBoolMapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayStringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayStringMapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayIntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayIntMapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayByteMapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayRuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRuneMapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayF64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayF64MapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayBool1DArrayMapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayString1DArrayMapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayString1DArrayMapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayInt1DArrayMapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayByte1DArrayMapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRune1DArrayMapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayF641DArrayMapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayF641DArrayMapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub struct BoolSkipIterator {
	n int
mut:
	index int
	iterator BoolIterator
}

pub fn (mut i BoolSkipIterator) next() ?bool {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct StringSkipIterator {
	n int
mut:
	index int
	iterator StringIterator
}

pub fn (mut i StringSkipIterator) next() ?string {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct IntSkipIterator {
	n int
mut:
	index int
	iterator IntIterator
}

pub fn (mut i IntSkipIterator) next() ?int {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct ByteSkipIterator {
	n int
mut:
	index int
	iterator ByteIterator
}

pub fn (mut i ByteSkipIterator) next() ?byte {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct RuneSkipIterator {
	n int
mut:
	index int
	iterator RuneIterator
}

pub fn (mut i RuneSkipIterator) next() ?rune {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct F64SkipIterator {
	n int
mut:
	index int
	iterator F64Iterator
}

pub fn (mut i F64SkipIterator) next() ?f64 {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct Bool1DArraySkipIterator {
	n int
mut:
	index int
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArraySkipIterator) next() ?[]bool {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct String1DArraySkipIterator {
	n int
mut:
	index int
	iterator String1DArrayIterator
}

pub fn (mut i String1DArraySkipIterator) next() ?[]string {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct Int1DArraySkipIterator {
	n int
mut:
	index int
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArraySkipIterator) next() ?[]int {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct Byte1DArraySkipIterator {
	n int
mut:
	index int
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArraySkipIterator) next() ?[]byte {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct Rune1DArraySkipIterator {
	n int
mut:
	index int
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArraySkipIterator) next() ?[]rune {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub struct F641DArraySkipIterator {
	n int
mut:
	index int
	iterator F641DArrayIterator
}

pub fn (mut i F641DArraySkipIterator) next() ?[]f64 {
	for i.index < i.n {
		i.iterator.next()?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i BoolSkipIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolSkipIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringSkipIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntSkipIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteSkipIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneSkipIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64SkipIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArraySkipIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArraySkipIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArraySkipIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArraySkipIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArraySkipIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArraySkipIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArraySkipIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArraySkipIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArraySkipIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArraySkipIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArraySkipIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArraySkipIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub struct BoolEveryIterator {
	n int
mut:
	iterator BoolIterator
}

pub fn (mut i BoolEveryIterator) next() ?bool {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct StringEveryIterator {
	n int
mut:
	iterator StringIterator
}

pub fn (mut i StringEveryIterator) next() ?string {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct IntEveryIterator {
	n int
mut:
	iterator IntIterator
}

pub fn (mut i IntEveryIterator) next() ?int {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct ByteEveryIterator {
	n int
mut:
	iterator ByteIterator
}

pub fn (mut i ByteEveryIterator) next() ?byte {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct RuneEveryIterator {
	n int
mut:
	iterator RuneIterator
}

pub fn (mut i RuneEveryIterator) next() ?rune {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct F64EveryIterator {
	n int
mut:
	iterator F64Iterator
}

pub fn (mut i F64EveryIterator) next() ?f64 {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct Bool1DArrayEveryIterator {
	n int
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayEveryIterator) next() ?[]bool {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct String1DArrayEveryIterator {
	n int
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayEveryIterator) next() ?[]string {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct Int1DArrayEveryIterator {
	n int
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayEveryIterator) next() ?[]int {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct Byte1DArrayEveryIterator {
	n int
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayEveryIterator) next() ?[]byte {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct Rune1DArrayEveryIterator {
	n int
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayEveryIterator) next() ?[]rune {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub struct F641DArrayEveryIterator {
	n int
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayEveryIterator) next() ?[]f64 {
	ret := i.iterator.next()?
	for _ in 1..i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i BoolEveryIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolEveryIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringEveryIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntEveryIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteEveryIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneEveryIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64EveryIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayEveryIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayEveryIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayEveryIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayEveryIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayEveryIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayEveryIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayEveryIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayEveryIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayEveryIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayEveryIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayEveryIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayEveryIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub struct BoolRevIterator {
mut:
	buffer []bool
	index int
	iterator BoolIterator
}

pub fn (mut i BoolRevIterator) next() ?bool {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct StringRevIterator {
mut:
	buffer []string
	index int
	iterator StringIterator
}

pub fn (mut i StringRevIterator) next() ?string {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct IntRevIterator {
mut:
	buffer []int
	index int
	iterator IntIterator
}

pub fn (mut i IntRevIterator) next() ?int {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct ByteRevIterator {
mut:
	buffer []byte
	index int
	iterator ByteIterator
}

pub fn (mut i ByteRevIterator) next() ?byte {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct RuneRevIterator {
mut:
	buffer []rune
	index int
	iterator RuneIterator
}

pub fn (mut i RuneRevIterator) next() ?rune {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct F64RevIterator {
mut:
	buffer []f64
	index int
	iterator F64Iterator
}

pub fn (mut i F64RevIterator) next() ?f64 {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct Bool1DArrayRevIterator {
mut:
	buffer [][]bool
	index int
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayRevIterator) next() ?[]bool {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct String1DArrayRevIterator {
mut:
	buffer [][]string
	index int
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayRevIterator) next() ?[]string {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct Int1DArrayRevIterator {
mut:
	buffer [][]int
	index int
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayRevIterator) next() ?[]int {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct Byte1DArrayRevIterator {
mut:
	buffer [][]byte
	index int
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayRevIterator) next() ?[]byte {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct Rune1DArrayRevIterator {
mut:
	buffer [][]rune
	index int
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayRevIterator) next() ?[]rune {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub struct F641DArrayRevIterator {
mut:
	buffer [][]f64
	index int
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayRevIterator) next() ?[]f64 {
	for true {
		item := i.iterator.next() or { break }
		i.buffer << item
		i.index++
	}
	if i.index == 0 {
		return none
	}
	i.index--
	return i.buffer[i.index]
}

pub fn (mut i BoolRevIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolRevIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolRevIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRevIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRevIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringRevIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRevIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i StringRevIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringRevIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRevIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRevIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntRevIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRevIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i IntRevIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntRevIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteRevIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteRevIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneRevIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRevIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RevIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64RevIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64RevIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64RevIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i F64RevIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64RevIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayRevIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayRevIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayRevIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayRevIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayRevIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayRevIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayRevIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayRevIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayRevIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayRevIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayRevIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayRevIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub struct BoolBool1DArrayWindowsIterator {
	n int
mut:
	iterator BoolIterator
	windows []bool
}

pub fn (mut i BoolBool1DArrayWindowsIterator) next() ?[]bool {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct StringString1DArrayWindowsIterator {
	n int
mut:
	iterator StringIterator
	windows []string
}

pub fn (mut i StringString1DArrayWindowsIterator) next() ?[]string {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct IntInt1DArrayWindowsIterator {
	n int
mut:
	iterator IntIterator
	windows []int
}

pub fn (mut i IntInt1DArrayWindowsIterator) next() ?[]int {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct ByteByte1DArrayWindowsIterator {
	n int
mut:
	iterator ByteIterator
	windows []byte
}

pub fn (mut i ByteByte1DArrayWindowsIterator) next() ?[]byte {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct RuneRune1DArrayWindowsIterator {
	n int
mut:
	iterator RuneIterator
	windows []rune
}

pub fn (mut i RuneRune1DArrayWindowsIterator) next() ?[]rune {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct F64F641DArrayWindowsIterator {
	n int
mut:
	iterator F64Iterator
	windows []f64
}

pub fn (mut i F64F641DArrayWindowsIterator) next() ?[]f64 {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct Bool1DArrayBool2DArrayWindowsIterator {
	n int
mut:
	iterator Bool1DArrayIterator
	windows [][]bool
}

pub fn (mut i Bool1DArrayBool2DArrayWindowsIterator) next() ?[][]bool {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct String1DArrayString2DArrayWindowsIterator {
	n int
mut:
	iterator String1DArrayIterator
	windows [][]string
}

pub fn (mut i String1DArrayString2DArrayWindowsIterator) next() ?[][]string {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct Int1DArrayInt2DArrayWindowsIterator {
	n int
mut:
	iterator Int1DArrayIterator
	windows [][]int
}

pub fn (mut i Int1DArrayInt2DArrayWindowsIterator) next() ?[][]int {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct Byte1DArrayByte2DArrayWindowsIterator {
	n int
mut:
	iterator Byte1DArrayIterator
	windows [][]byte
}

pub fn (mut i Byte1DArrayByte2DArrayWindowsIterator) next() ?[][]byte {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct Rune1DArrayRune2DArrayWindowsIterator {
	n int
mut:
	iterator Rune1DArrayIterator
	windows [][]rune
}

pub fn (mut i Rune1DArrayRune2DArrayWindowsIterator) next() ?[][]rune {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub struct F641DArrayF642DArrayWindowsIterator {
	n int
mut:
	iterator F641DArrayIterator
	windows [][]f64
}

pub fn (mut i F641DArrayF642DArrayWindowsIterator) next() ?[][]f64 {
	for true {
		i.windows << i.iterator.next() ?
		if i.windows.len >= i.n {
			break
		}
	}
	return i.windows[i.windows.len - i.n..].clone()
}

pub fn (mut i BoolBool1DArrayWindowsIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolBool1DArrayWindowsIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolBool1DArrayWindowsIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringString1DArrayWindowsIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringString1DArrayWindowsIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntInt1DArrayWindowsIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntInt1DArrayWindowsIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteByte1DArrayWindowsIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteByte1DArrayWindowsIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneRune1DArrayWindowsIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneRune1DArrayWindowsIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64F641DArrayWindowsIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F641DArrayWindowsIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub struct BoolTapIterator {
	tap_fn fn(_ bool)
mut:
	iterator BoolIterator
}

pub fn (mut i BoolTapIterator) next() ?bool {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct StringTapIterator {
	tap_fn fn(_ string)
mut:
	iterator StringIterator
}

pub fn (mut i StringTapIterator) next() ?string {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct IntTapIterator {
	tap_fn fn(_ int)
mut:
	iterator IntIterator
}

pub fn (mut i IntTapIterator) next() ?int {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct ByteTapIterator {
	tap_fn fn(_ byte)
mut:
	iterator ByteIterator
}

pub fn (mut i ByteTapIterator) next() ?byte {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct RuneTapIterator {
	tap_fn fn(_ rune)
mut:
	iterator RuneIterator
}

pub fn (mut i RuneTapIterator) next() ?rune {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct F64TapIterator {
	tap_fn fn(_ f64)
mut:
	iterator F64Iterator
}

pub fn (mut i F64TapIterator) next() ?f64 {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct Bool1DArrayTapIterator {
	tap_fn fn(_ []bool)
mut:
	iterator Bool1DArrayIterator
}

pub fn (mut i Bool1DArrayTapIterator) next() ?[]bool {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct String1DArrayTapIterator {
	tap_fn fn(_ []string)
mut:
	iterator String1DArrayIterator
}

pub fn (mut i String1DArrayTapIterator) next() ?[]string {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct Int1DArrayTapIterator {
	tap_fn fn(_ []int)
mut:
	iterator Int1DArrayIterator
}

pub fn (mut i Int1DArrayTapIterator) next() ?[]int {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct Byte1DArrayTapIterator {
	tap_fn fn(_ []byte)
mut:
	iterator Byte1DArrayIterator
}

pub fn (mut i Byte1DArrayTapIterator) next() ?[]byte {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct Rune1DArrayTapIterator {
	tap_fn fn(_ []rune)
mut:
	iterator Rune1DArrayIterator
}

pub fn (mut i Rune1DArrayTapIterator) next() ?[]rune {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub struct F641DArrayTapIterator {
	tap_fn fn(_ []f64)
mut:
	iterator F641DArrayIterator
}

pub fn (mut i F641DArrayTapIterator) next() ?[]f64 {
	item := i.iterator.next()?
	i.tap_fn(item)
	return item
}

pub fn (mut i BoolTapIterator) filter(filter_fn fn(_ bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_bool(map_fn fn(_ bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_string(map_fn fn(_ bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_int(map_fn fn(_ bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_byte(map_fn fn(_ bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_rune(map_fn fn(_ bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_f64(map_fn fn(_ bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_bool_arr(map_fn fn(_ bool) []bool) &BoolBool1DArrayMapIterator {
	return &BoolBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_string_arr(map_fn fn(_ bool) []string) &BoolString1DArrayMapIterator {
	return &BoolString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_int_arr(map_fn fn(_ bool) []int) &BoolInt1DArrayMapIterator {
	return &BoolInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_byte_arr(map_fn fn(_ bool) []byte) &BoolByte1DArrayMapIterator {
	return &BoolByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_rune_arr(map_fn fn(_ bool) []rune) &BoolRune1DArrayMapIterator {
	return &BoolRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) map_f64_arr(map_fn fn(_ bool) []f64) &BoolF641DArrayMapIterator {
	return &BoolF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolTapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) rev() &BoolRevIterator {
	return &BoolRevIterator{
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) windows(n int) &BoolBool1DArrayWindowsIterator {
	return &BoolBool1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolTapIterator) tap(tap_fn fn(_ bool)) &BoolTapIterator {
	return &BoolTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) filter(filter_fn fn(_ string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_bool(map_fn fn(_ string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_string(map_fn fn(_ string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_int(map_fn fn(_ string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_byte(map_fn fn(_ string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_rune(map_fn fn(_ string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_f64(map_fn fn(_ string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_bool_arr(map_fn fn(_ string) []bool) &StringBool1DArrayMapIterator {
	return &StringBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_string_arr(map_fn fn(_ string) []string) &StringString1DArrayMapIterator {
	return &StringString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_int_arr(map_fn fn(_ string) []int) &StringInt1DArrayMapIterator {
	return &StringInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_byte_arr(map_fn fn(_ string) []byte) &StringByte1DArrayMapIterator {
	return &StringByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_rune_arr(map_fn fn(_ string) []rune) &StringRune1DArrayMapIterator {
	return &StringRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) map_f64_arr(map_fn fn(_ string) []f64) &StringF641DArrayMapIterator {
	return &StringF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringTapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringTapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringTapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringTapIterator) rev() &StringRevIterator {
	return &StringRevIterator{
		iterator: i
	}
}

pub fn (mut i StringTapIterator) windows(n int) &StringString1DArrayWindowsIterator {
	return &StringString1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringTapIterator) tap(tap_fn fn(_ string)) &StringTapIterator {
	return &StringTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) filter(filter_fn fn(_ int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_bool(map_fn fn(_ int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_string(map_fn fn(_ int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_int(map_fn fn(_ int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_byte(map_fn fn(_ int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_rune(map_fn fn(_ int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_f64(map_fn fn(_ int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_bool_arr(map_fn fn(_ int) []bool) &IntBool1DArrayMapIterator {
	return &IntBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_string_arr(map_fn fn(_ int) []string) &IntString1DArrayMapIterator {
	return &IntString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_int_arr(map_fn fn(_ int) []int) &IntInt1DArrayMapIterator {
	return &IntInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_byte_arr(map_fn fn(_ int) []byte) &IntByte1DArrayMapIterator {
	return &IntByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_rune_arr(map_fn fn(_ int) []rune) &IntRune1DArrayMapIterator {
	return &IntRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) map_f64_arr(map_fn fn(_ int) []f64) &IntF641DArrayMapIterator {
	return &IntF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntTapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntTapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntTapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntTapIterator) rev() &IntRevIterator {
	return &IntRevIterator{
		iterator: i
	}
}

pub fn (mut i IntTapIterator) windows(n int) &IntInt1DArrayWindowsIterator {
	return &IntInt1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntTapIterator) tap(tap_fn fn(_ int)) &IntTapIterator {
	return &IntTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) filter(filter_fn fn(_ byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_bool(map_fn fn(_ byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_string(map_fn fn(_ byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_int(map_fn fn(_ byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_byte(map_fn fn(_ byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_rune(map_fn fn(_ byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_f64(map_fn fn(_ byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_bool_arr(map_fn fn(_ byte) []bool) &ByteBool1DArrayMapIterator {
	return &ByteBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_string_arr(map_fn fn(_ byte) []string) &ByteString1DArrayMapIterator {
	return &ByteString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_int_arr(map_fn fn(_ byte) []int) &ByteInt1DArrayMapIterator {
	return &ByteInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_byte_arr(map_fn fn(_ byte) []byte) &ByteByte1DArrayMapIterator {
	return &ByteByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_rune_arr(map_fn fn(_ byte) []rune) &ByteRune1DArrayMapIterator {
	return &ByteRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) map_f64_arr(map_fn fn(_ byte) []f64) &ByteF641DArrayMapIterator {
	return &ByteF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteTapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) rev() &ByteRevIterator {
	return &ByteRevIterator{
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) windows(n int) &ByteByte1DArrayWindowsIterator {
	return &ByteByte1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteTapIterator) tap(tap_fn fn(_ byte)) &ByteTapIterator {
	return &ByteTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) filter(filter_fn fn(_ rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_bool(map_fn fn(_ rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_string(map_fn fn(_ rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_int(map_fn fn(_ rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_byte(map_fn fn(_ rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_rune(map_fn fn(_ rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_f64(map_fn fn(_ rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_bool_arr(map_fn fn(_ rune) []bool) &RuneBool1DArrayMapIterator {
	return &RuneBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_string_arr(map_fn fn(_ rune) []string) &RuneString1DArrayMapIterator {
	return &RuneString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_int_arr(map_fn fn(_ rune) []int) &RuneInt1DArrayMapIterator {
	return &RuneInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_byte_arr(map_fn fn(_ rune) []byte) &RuneByte1DArrayMapIterator {
	return &RuneByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_rune_arr(map_fn fn(_ rune) []rune) &RuneRune1DArrayMapIterator {
	return &RuneRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) map_f64_arr(map_fn fn(_ rune) []f64) &RuneF641DArrayMapIterator {
	return &RuneF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneTapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) rev() &RuneRevIterator {
	return &RuneRevIterator{
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) windows(n int) &RuneRune1DArrayWindowsIterator {
	return &RuneRune1DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneTapIterator) tap(tap_fn fn(_ rune)) &RuneTapIterator {
	return &RuneTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) filter(filter_fn fn(_ f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_bool(map_fn fn(_ f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_string(map_fn fn(_ f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_int(map_fn fn(_ f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_byte(map_fn fn(_ f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_rune(map_fn fn(_ f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_f64(map_fn fn(_ f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_bool_arr(map_fn fn(_ f64) []bool) &F64Bool1DArrayMapIterator {
	return &F64Bool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_string_arr(map_fn fn(_ f64) []string) &F64String1DArrayMapIterator {
	return &F64String1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_int_arr(map_fn fn(_ f64) []int) &F64Int1DArrayMapIterator {
	return &F64Int1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_byte_arr(map_fn fn(_ f64) []byte) &F64Byte1DArrayMapIterator {
	return &F64Byte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_rune_arr(map_fn fn(_ f64) []rune) &F64Rune1DArrayMapIterator {
	return &F64Rune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) map_f64_arr(map_fn fn(_ f64) []f64) &F64F641DArrayMapIterator {
	return &F64F641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64TapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64TapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64TapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64TapIterator) rev() &F64RevIterator {
	return &F64RevIterator{
		iterator: i
	}
}

pub fn (mut i F64TapIterator) windows(n int) &F64F641DArrayWindowsIterator {
	return &F64F641DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64TapIterator) tap(tap_fn fn(_ f64)) &F64TapIterator {
	return &F64TapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) filter(filter_fn fn(_ []bool) bool) &Bool1DArrayFilterIterator {
	return &Bool1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_bool(map_fn fn(_ []bool) bool) &Bool1DArrayBoolMapIterator {
	return &Bool1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_string(map_fn fn(_ []bool) string) &Bool1DArrayStringMapIterator {
	return &Bool1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_int(map_fn fn(_ []bool) int) &Bool1DArrayIntMapIterator {
	return &Bool1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_byte(map_fn fn(_ []bool) byte) &Bool1DArrayByteMapIterator {
	return &Bool1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_rune(map_fn fn(_ []bool) rune) &Bool1DArrayRuneMapIterator {
	return &Bool1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_f64(map_fn fn(_ []bool) f64) &Bool1DArrayF64MapIterator {
	return &Bool1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_bool_arr(map_fn fn(_ []bool) []bool) &Bool1DArrayBool1DArrayMapIterator {
	return &Bool1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_string_arr(map_fn fn(_ []bool) []string) &Bool1DArrayString1DArrayMapIterator {
	return &Bool1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_int_arr(map_fn fn(_ []bool) []int) &Bool1DArrayInt1DArrayMapIterator {
	return &Bool1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_byte_arr(map_fn fn(_ []bool) []byte) &Bool1DArrayByte1DArrayMapIterator {
	return &Bool1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_rune_arr(map_fn fn(_ []bool) []rune) &Bool1DArrayRune1DArrayMapIterator {
	return &Bool1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) map_f64_arr(map_fn fn(_ []bool) []f64) &Bool1DArrayF641DArrayMapIterator {
	return &Bool1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) skip(n int) &Bool1DArraySkipIterator {
	return &Bool1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) collect() [][]bool {
	mut arr := [][]bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Bool1DArrayTapIterator) every(n int) &Bool1DArrayEveryIterator {
	return &Bool1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) rev() &Bool1DArrayRevIterator {
	return &Bool1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) windows(n int) &Bool1DArrayBool2DArrayWindowsIterator {
	return &Bool1DArrayBool2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Bool1DArrayTapIterator) tap(tap_fn fn(_ []bool)) &Bool1DArrayTapIterator {
	return &Bool1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) filter(filter_fn fn(_ []string) bool) &String1DArrayFilterIterator {
	return &String1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_bool(map_fn fn(_ []string) bool) &String1DArrayBoolMapIterator {
	return &String1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_string(map_fn fn(_ []string) string) &String1DArrayStringMapIterator {
	return &String1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_int(map_fn fn(_ []string) int) &String1DArrayIntMapIterator {
	return &String1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_byte(map_fn fn(_ []string) byte) &String1DArrayByteMapIterator {
	return &String1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_rune(map_fn fn(_ []string) rune) &String1DArrayRuneMapIterator {
	return &String1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_f64(map_fn fn(_ []string) f64) &String1DArrayF64MapIterator {
	return &String1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_bool_arr(map_fn fn(_ []string) []bool) &String1DArrayBool1DArrayMapIterator {
	return &String1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_string_arr(map_fn fn(_ []string) []string) &String1DArrayString1DArrayMapIterator {
	return &String1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_int_arr(map_fn fn(_ []string) []int) &String1DArrayInt1DArrayMapIterator {
	return &String1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_byte_arr(map_fn fn(_ []string) []byte) &String1DArrayByte1DArrayMapIterator {
	return &String1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_rune_arr(map_fn fn(_ []string) []rune) &String1DArrayRune1DArrayMapIterator {
	return &String1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) map_f64_arr(map_fn fn(_ []string) []f64) &String1DArrayF641DArrayMapIterator {
	return &String1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) skip(n int) &String1DArraySkipIterator {
	return &String1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) collect() [][]string {
	mut arr := [][]string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i String1DArrayTapIterator) every(n int) &String1DArrayEveryIterator {
	return &String1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) rev() &String1DArrayRevIterator {
	return &String1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) windows(n int) &String1DArrayString2DArrayWindowsIterator {
	return &String1DArrayString2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i String1DArrayTapIterator) tap(tap_fn fn(_ []string)) &String1DArrayTapIterator {
	return &String1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) filter(filter_fn fn(_ []int) bool) &Int1DArrayFilterIterator {
	return &Int1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_bool(map_fn fn(_ []int) bool) &Int1DArrayBoolMapIterator {
	return &Int1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_string(map_fn fn(_ []int) string) &Int1DArrayStringMapIterator {
	return &Int1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_int(map_fn fn(_ []int) int) &Int1DArrayIntMapIterator {
	return &Int1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_byte(map_fn fn(_ []int) byte) &Int1DArrayByteMapIterator {
	return &Int1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_rune(map_fn fn(_ []int) rune) &Int1DArrayRuneMapIterator {
	return &Int1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_f64(map_fn fn(_ []int) f64) &Int1DArrayF64MapIterator {
	return &Int1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_bool_arr(map_fn fn(_ []int) []bool) &Int1DArrayBool1DArrayMapIterator {
	return &Int1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_string_arr(map_fn fn(_ []int) []string) &Int1DArrayString1DArrayMapIterator {
	return &Int1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_int_arr(map_fn fn(_ []int) []int) &Int1DArrayInt1DArrayMapIterator {
	return &Int1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_byte_arr(map_fn fn(_ []int) []byte) &Int1DArrayByte1DArrayMapIterator {
	return &Int1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_rune_arr(map_fn fn(_ []int) []rune) &Int1DArrayRune1DArrayMapIterator {
	return &Int1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) map_f64_arr(map_fn fn(_ []int) []f64) &Int1DArrayF641DArrayMapIterator {
	return &Int1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) skip(n int) &Int1DArraySkipIterator {
	return &Int1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) collect() [][]int {
	mut arr := [][]int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Int1DArrayTapIterator) every(n int) &Int1DArrayEveryIterator {
	return &Int1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) rev() &Int1DArrayRevIterator {
	return &Int1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) windows(n int) &Int1DArrayInt2DArrayWindowsIterator {
	return &Int1DArrayInt2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Int1DArrayTapIterator) tap(tap_fn fn(_ []int)) &Int1DArrayTapIterator {
	return &Int1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) filter(filter_fn fn(_ []byte) bool) &Byte1DArrayFilterIterator {
	return &Byte1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_bool(map_fn fn(_ []byte) bool) &Byte1DArrayBoolMapIterator {
	return &Byte1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_string(map_fn fn(_ []byte) string) &Byte1DArrayStringMapIterator {
	return &Byte1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_int(map_fn fn(_ []byte) int) &Byte1DArrayIntMapIterator {
	return &Byte1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_byte(map_fn fn(_ []byte) byte) &Byte1DArrayByteMapIterator {
	return &Byte1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_rune(map_fn fn(_ []byte) rune) &Byte1DArrayRuneMapIterator {
	return &Byte1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_f64(map_fn fn(_ []byte) f64) &Byte1DArrayF64MapIterator {
	return &Byte1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_bool_arr(map_fn fn(_ []byte) []bool) &Byte1DArrayBool1DArrayMapIterator {
	return &Byte1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_string_arr(map_fn fn(_ []byte) []string) &Byte1DArrayString1DArrayMapIterator {
	return &Byte1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_int_arr(map_fn fn(_ []byte) []int) &Byte1DArrayInt1DArrayMapIterator {
	return &Byte1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_byte_arr(map_fn fn(_ []byte) []byte) &Byte1DArrayByte1DArrayMapIterator {
	return &Byte1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_rune_arr(map_fn fn(_ []byte) []rune) &Byte1DArrayRune1DArrayMapIterator {
	return &Byte1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) map_f64_arr(map_fn fn(_ []byte) []f64) &Byte1DArrayF641DArrayMapIterator {
	return &Byte1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) skip(n int) &Byte1DArraySkipIterator {
	return &Byte1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) collect() [][]byte {
	mut arr := [][]byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Byte1DArrayTapIterator) every(n int) &Byte1DArrayEveryIterator {
	return &Byte1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) rev() &Byte1DArrayRevIterator {
	return &Byte1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) windows(n int) &Byte1DArrayByte2DArrayWindowsIterator {
	return &Byte1DArrayByte2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Byte1DArrayTapIterator) tap(tap_fn fn(_ []byte)) &Byte1DArrayTapIterator {
	return &Byte1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) filter(filter_fn fn(_ []rune) bool) &Rune1DArrayFilterIterator {
	return &Rune1DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_bool(map_fn fn(_ []rune) bool) &Rune1DArrayBoolMapIterator {
	return &Rune1DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_string(map_fn fn(_ []rune) string) &Rune1DArrayStringMapIterator {
	return &Rune1DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_int(map_fn fn(_ []rune) int) &Rune1DArrayIntMapIterator {
	return &Rune1DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_byte(map_fn fn(_ []rune) byte) &Rune1DArrayByteMapIterator {
	return &Rune1DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_rune(map_fn fn(_ []rune) rune) &Rune1DArrayRuneMapIterator {
	return &Rune1DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_f64(map_fn fn(_ []rune) f64) &Rune1DArrayF64MapIterator {
	return &Rune1DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_bool_arr(map_fn fn(_ []rune) []bool) &Rune1DArrayBool1DArrayMapIterator {
	return &Rune1DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_string_arr(map_fn fn(_ []rune) []string) &Rune1DArrayString1DArrayMapIterator {
	return &Rune1DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_int_arr(map_fn fn(_ []rune) []int) &Rune1DArrayInt1DArrayMapIterator {
	return &Rune1DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_byte_arr(map_fn fn(_ []rune) []byte) &Rune1DArrayByte1DArrayMapIterator {
	return &Rune1DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_rune_arr(map_fn fn(_ []rune) []rune) &Rune1DArrayRune1DArrayMapIterator {
	return &Rune1DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) map_f64_arr(map_fn fn(_ []rune) []f64) &Rune1DArrayF641DArrayMapIterator {
	return &Rune1DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) skip(n int) &Rune1DArraySkipIterator {
	return &Rune1DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) collect() [][]rune {
	mut arr := [][]rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i Rune1DArrayTapIterator) every(n int) &Rune1DArrayEveryIterator {
	return &Rune1DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) rev() &Rune1DArrayRevIterator {
	return &Rune1DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) windows(n int) &Rune1DArrayRune2DArrayWindowsIterator {
	return &Rune1DArrayRune2DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i Rune1DArrayTapIterator) tap(tap_fn fn(_ []rune)) &Rune1DArrayTapIterator {
	return &Rune1DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) filter(filter_fn fn(_ []f64) bool) &F641DArrayFilterIterator {
	return &F641DArrayFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_bool(map_fn fn(_ []f64) bool) &F641DArrayBoolMapIterator {
	return &F641DArrayBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_string(map_fn fn(_ []f64) string) &F641DArrayStringMapIterator {
	return &F641DArrayStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_int(map_fn fn(_ []f64) int) &F641DArrayIntMapIterator {
	return &F641DArrayIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_byte(map_fn fn(_ []f64) byte) &F641DArrayByteMapIterator {
	return &F641DArrayByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_rune(map_fn fn(_ []f64) rune) &F641DArrayRuneMapIterator {
	return &F641DArrayRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_f64(map_fn fn(_ []f64) f64) &F641DArrayF64MapIterator {
	return &F641DArrayF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_bool_arr(map_fn fn(_ []f64) []bool) &F641DArrayBool1DArrayMapIterator {
	return &F641DArrayBool1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_string_arr(map_fn fn(_ []f64) []string) &F641DArrayString1DArrayMapIterator {
	return &F641DArrayString1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_int_arr(map_fn fn(_ []f64) []int) &F641DArrayInt1DArrayMapIterator {
	return &F641DArrayInt1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_byte_arr(map_fn fn(_ []f64) []byte) &F641DArrayByte1DArrayMapIterator {
	return &F641DArrayByte1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_rune_arr(map_fn fn(_ []f64) []rune) &F641DArrayRune1DArrayMapIterator {
	return &F641DArrayRune1DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) map_f64_arr(map_fn fn(_ []f64) []f64) &F641DArrayF641DArrayMapIterator {
	return &F641DArrayF641DArrayMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) skip(n int) &F641DArraySkipIterator {
	return &F641DArraySkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) collect() [][]f64 {
	mut arr := [][]f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F641DArrayTapIterator) every(n int) &F641DArrayEveryIterator {
	return &F641DArrayEveryIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) rev() &F641DArrayRevIterator {
	return &F641DArrayRevIterator{
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) windows(n int) &F641DArrayF642DArrayWindowsIterator {
	return &F641DArrayF642DArrayWindowsIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F641DArrayTapIterator) tap(tap_fn fn(_ []f64)) &F641DArrayTapIterator {
	return &F641DArrayTapIterator{
		tap_fn: tap_fn
		iterator: i
	}
}

