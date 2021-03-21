module viter

interface BoolIterator {
	next() ?bool
}

interface StringIterator {
	next() ?string
}

interface IntIterator {
	next() ?int
}

interface ByteIterator {
	next() ?byte
}

interface RuneIterator {
	next() ?rune
}

interface F64Iterator {
	next() ?f64
}

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

pub fn (mut i BoolArrayIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub fn (mut i StringArrayIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub fn (mut i IntArrayIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub fn (mut i ByteArrayIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub fn (mut i RuneArrayIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub fn (mut i F64ArrayIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct BoolFilterIterator {
	filter_fn fn (bool) bool
mut:
	iterator BoolIterator
}

pub fn (mut i BoolFilterIterator) next() ?bool {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i BoolFilterIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct StringFilterIterator {
	filter_fn fn (string) bool
mut:
	iterator StringIterator
}

pub fn (mut i StringFilterIterator) next() ?string {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i StringFilterIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct IntFilterIterator {
	filter_fn fn (int) bool
mut:
	iterator IntIterator
}

pub fn (mut i IntFilterIterator) next() ?int {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i IntFilterIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct ByteFilterIterator {
	filter_fn fn (byte) bool
mut:
	iterator ByteIterator
}

pub fn (mut i ByteFilterIterator) next() ?byte {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i ByteFilterIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct RuneFilterIterator {
	filter_fn fn (rune) bool
mut:
	iterator RuneIterator
}

pub fn (mut i RuneFilterIterator) next() ?rune {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i RuneFilterIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct F64FilterIterator {
	filter_fn fn (f64) bool
mut:
	iterator F64Iterator
}

pub fn (mut i F64FilterIterator) next() ?f64 {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i F64FilterIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct BoolBoolMapIterator {
	map_fn fn (bool) bool
mut:
	iterator BoolIterator
}

pub fn (mut i BoolBoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolBoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct BoolStringMapIterator {
	map_fn fn (bool) string
mut:
	iterator BoolIterator
}

pub fn (mut i BoolStringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolStringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct BoolIntMapIterator {
	map_fn fn (bool) int
mut:
	iterator BoolIterator
}

pub fn (mut i BoolIntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolIntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct BoolByteMapIterator {
	map_fn fn (bool) byte
mut:
	iterator BoolIterator
}

pub fn (mut i BoolByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct BoolRuneMapIterator {
	map_fn fn (bool) rune
mut:
	iterator BoolIterator
}

pub fn (mut i BoolRuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolRuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct BoolF64MapIterator {
	map_fn fn (bool) f64
mut:
	iterator BoolIterator
}

pub fn (mut i BoolF64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolF64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct StringBoolMapIterator {
	map_fn fn (string) bool
mut:
	iterator StringIterator
}

pub fn (mut i StringBoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringBoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct StringStringMapIterator {
	map_fn fn (string) string
mut:
	iterator StringIterator
}

pub fn (mut i StringStringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringStringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct StringIntMapIterator {
	map_fn fn (string) int
mut:
	iterator StringIterator
}

pub fn (mut i StringIntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringIntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct StringByteMapIterator {
	map_fn fn (string) byte
mut:
	iterator StringIterator
}

pub fn (mut i StringByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct StringRuneMapIterator {
	map_fn fn (string) rune
mut:
	iterator StringIterator
}

pub fn (mut i StringRuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringRuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct StringF64MapIterator {
	map_fn fn (string) f64
mut:
	iterator StringIterator
}

pub fn (mut i StringF64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringF64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct IntBoolMapIterator {
	map_fn fn (int) bool
mut:
	iterator IntIterator
}

pub fn (mut i IntBoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntBoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct IntStringMapIterator {
	map_fn fn (int) string
mut:
	iterator IntIterator
}

pub fn (mut i IntStringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntStringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct IntIntMapIterator {
	map_fn fn (int) int
mut:
	iterator IntIterator
}

pub fn (mut i IntIntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntIntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct IntByteMapIterator {
	map_fn fn (int) byte
mut:
	iterator IntIterator
}

pub fn (mut i IntByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct IntRuneMapIterator {
	map_fn fn (int) rune
mut:
	iterator IntIterator
}

pub fn (mut i IntRuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntRuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct IntF64MapIterator {
	map_fn fn (int) f64
mut:
	iterator IntIterator
}

pub fn (mut i IntF64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntF64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct ByteBoolMapIterator {
	map_fn fn (byte) bool
mut:
	iterator ByteIterator
}

pub fn (mut i ByteBoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteBoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct ByteStringMapIterator {
	map_fn fn (byte) string
mut:
	iterator ByteIterator
}

pub fn (mut i ByteStringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteStringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct ByteIntMapIterator {
	map_fn fn (byte) int
mut:
	iterator ByteIterator
}

pub fn (mut i ByteIntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteIntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct ByteByteMapIterator {
	map_fn fn (byte) byte
mut:
	iterator ByteIterator
}

pub fn (mut i ByteByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct ByteRuneMapIterator {
	map_fn fn (byte) rune
mut:
	iterator ByteIterator
}

pub fn (mut i ByteRuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteRuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct ByteF64MapIterator {
	map_fn fn (byte) f64
mut:
	iterator ByteIterator
}

pub fn (mut i ByteF64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteF64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct RuneBoolMapIterator {
	map_fn fn (rune) bool
mut:
	iterator RuneIterator
}

pub fn (mut i RuneBoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneBoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct RuneStringMapIterator {
	map_fn fn (rune) string
mut:
	iterator RuneIterator
}

pub fn (mut i RuneStringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneStringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct RuneIntMapIterator {
	map_fn fn (rune) int
mut:
	iterator RuneIterator
}

pub fn (mut i RuneIntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneIntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct RuneByteMapIterator {
	map_fn fn (rune) byte
mut:
	iterator RuneIterator
}

pub fn (mut i RuneByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct RuneRuneMapIterator {
	map_fn fn (rune) rune
mut:
	iterator RuneIterator
}

pub fn (mut i RuneRuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneRuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct RuneF64MapIterator {
	map_fn fn (rune) f64
mut:
	iterator RuneIterator
}

pub fn (mut i RuneF64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneF64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct F64BoolMapIterator {
	map_fn fn (f64) bool
mut:
	iterator F64Iterator
}

pub fn (mut i F64BoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64BoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct F64StringMapIterator {
	map_fn fn (f64) string
mut:
	iterator F64Iterator
}

pub fn (mut i F64StringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64StringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct F64IntMapIterator {
	map_fn fn (f64) int
mut:
	iterator F64Iterator
}

pub fn (mut i F64IntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64IntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct F64ByteMapIterator {
	map_fn fn (f64) byte
mut:
	iterator F64Iterator
}

pub fn (mut i F64ByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64ByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct F64RuneMapIterator {
	map_fn fn (f64) rune
mut:
	iterator F64Iterator
}

pub fn (mut i F64RuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64RuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct F64F64MapIterator {
	map_fn fn (f64) f64
mut:
	iterator F64Iterator
}

pub fn (mut i F64F64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64F64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct BoolSkipIterator {
	n int
mut:
	index    int
	iterator BoolIterator
}

pub fn (mut i BoolSkipIterator) next() ?bool {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i BoolSkipIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct StringSkipIterator {
	n int
mut:
	index    int
	iterator StringIterator
}

pub fn (mut i StringSkipIterator) next() ?string {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i StringSkipIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct IntSkipIterator {
	n int
mut:
	index    int
	iterator IntIterator
}

pub fn (mut i IntSkipIterator) next() ?int {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i IntSkipIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct ByteSkipIterator {
	n int
mut:
	index    int
	iterator ByteIterator
}

pub fn (mut i ByteSkipIterator) next() ?byte {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i ByteSkipIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct RuneSkipIterator {
	n int
mut:
	index    int
	iterator RuneIterator
}

pub fn (mut i RuneSkipIterator) next() ?rune {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i RuneSkipIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct F64SkipIterator {
	n int
mut:
	index    int
	iterator F64Iterator
}

pub fn (mut i F64SkipIterator) next() ?f64 {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i F64SkipIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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

pub struct BoolEveryIterator {
	n int
mut:
	iterator BoolIterator
}

pub fn (mut i BoolEveryIterator) next() ?bool {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i BoolEveryIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
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

pub struct StringEveryIterator {
	n int
mut:
	iterator StringIterator
}

pub fn (mut i StringEveryIterator) next() ?string {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i StringEveryIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
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

pub struct IntEveryIterator {
	n int
mut:
	iterator IntIterator
}

pub fn (mut i IntEveryIterator) next() ?int {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i IntEveryIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
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

pub struct ByteEveryIterator {
	n int
mut:
	iterator ByteIterator
}

pub fn (mut i ByteEveryIterator) next() ?byte {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i ByteEveryIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
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

pub struct RuneEveryIterator {
	n int
mut:
	iterator RuneIterator
}

pub fn (mut i RuneEveryIterator) next() ?rune {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i RuneEveryIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
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

pub struct F64EveryIterator {
	n int
mut:
	iterator F64Iterator
}

pub fn (mut i F64EveryIterator) next() ?f64 {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i F64EveryIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
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
