module viter

interface StringIterator {
	next() ?string
}

interface IntIterator {
	next() ?int
}

interface BoolIterator {
	next() ?bool
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

pub fn iter_string(arr []string) StringArrayIterator {
	return StringArrayIterator{
		data: arr
	}
}

pub fn (mut i StringArrayIterator) filter(filter_fn fn (string) bool) StringFilterIterator {
	return StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_string(map_fn fn (string) string) StringStringMapIterator {
	return StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_int(map_fn fn (string) int) StringIntMapIterator {
	return StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_bool(map_fn fn (string) bool) StringBoolMapIterator {
	return StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) skip(n int) StringSkipIterator {
	return StringSkipIterator{
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

pub fn iter_int(arr []int) IntArrayIterator {
	return IntArrayIterator{
		data: arr
	}
}

pub fn (mut i IntArrayIterator) filter(filter_fn fn (int) bool) IntFilterIterator {
	return IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_string(map_fn fn (int) string) IntStringMapIterator {
	return IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_int(map_fn fn (int) int) IntIntMapIterator {
	return IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_bool(map_fn fn (int) bool) IntBoolMapIterator {
	return IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) skip(n int) IntSkipIterator {
	return IntSkipIterator{
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

pub fn iter_bool(arr []bool) BoolArrayIterator {
	return BoolArrayIterator{
		data: arr
	}
}

pub fn (mut i BoolArrayIterator) filter(filter_fn fn (bool) bool) BoolFilterIterator {
	return BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_string(map_fn fn (bool) string) BoolStringMapIterator {
	return BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_int(map_fn fn (bool) int) BoolIntMapIterator {
	return BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_bool(map_fn fn (bool) bool) BoolBoolMapIterator {
	return BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) skip(n int) BoolSkipIterator {
	return BoolSkipIterator{
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

pub fn (mut i StringFilterIterator) filter(filter_fn fn (string) bool) StringFilterIterator {
	return StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_string(map_fn fn (string) string) StringStringMapIterator {
	return StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_int(map_fn fn (string) int) StringIntMapIterator {
	return StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_bool(map_fn fn (string) bool) StringBoolMapIterator {
	return StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) skip(n int) StringSkipIterator {
	return StringSkipIterator{
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

pub fn (mut i IntFilterIterator) filter(filter_fn fn (int) bool) IntFilterIterator {
	return IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_string(map_fn fn (int) string) IntStringMapIterator {
	return IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_int(map_fn fn (int) int) IntIntMapIterator {
	return IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_bool(map_fn fn (int) bool) IntBoolMapIterator {
	return IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) skip(n int) IntSkipIterator {
	return IntSkipIterator{
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

pub fn (mut i BoolFilterIterator) filter(filter_fn fn (bool) bool) BoolFilterIterator {
	return BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_string(map_fn fn (bool) string) BoolStringMapIterator {
	return BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_int(map_fn fn (bool) int) BoolIntMapIterator {
	return BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_bool(map_fn fn (bool) bool) BoolBoolMapIterator {
	return BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) skip(n int) BoolSkipIterator {
	return BoolSkipIterator{
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

pub struct StringStringMapIterator {
	map_fn fn (string) string
mut:
	iterator StringIterator
}

pub fn (mut i StringStringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringStringMapIterator) filter(filter_fn fn (string) bool) StringFilterIterator {
	return StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_string(map_fn fn (string) string) StringStringMapIterator {
	return StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_int(map_fn fn (string) int) StringIntMapIterator {
	return StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_bool(map_fn fn (string) bool) StringBoolMapIterator {
	return StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) skip(n int) StringSkipIterator {
	return StringSkipIterator{
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

pub struct StringIntMapIterator {
	map_fn fn (string) int
mut:
	iterator StringIterator
}

pub fn (mut i StringIntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringIntMapIterator) filter(filter_fn fn (int) bool) IntFilterIterator {
	return IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_string(map_fn fn (int) string) IntStringMapIterator {
	return IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_int(map_fn fn (int) int) IntIntMapIterator {
	return IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_bool(map_fn fn (int) bool) IntBoolMapIterator {
	return IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) skip(n int) IntSkipIterator {
	return IntSkipIterator{
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

pub struct StringBoolMapIterator {
	map_fn fn (string) bool
mut:
	iterator StringIterator
}

pub fn (mut i StringBoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringBoolMapIterator) filter(filter_fn fn (bool) bool) BoolFilterIterator {
	return BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_string(map_fn fn (bool) string) BoolStringMapIterator {
	return BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_int(map_fn fn (bool) int) BoolIntMapIterator {
	return BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_bool(map_fn fn (bool) bool) BoolBoolMapIterator {
	return BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) skip(n int) BoolSkipIterator {
	return BoolSkipIterator{
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

pub struct IntStringMapIterator {
	map_fn fn (int) string
mut:
	iterator IntIterator
}

pub fn (mut i IntStringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntStringMapIterator) filter(filter_fn fn (string) bool) StringFilterIterator {
	return StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_string(map_fn fn (string) string) StringStringMapIterator {
	return StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_int(map_fn fn (string) int) StringIntMapIterator {
	return StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_bool(map_fn fn (string) bool) StringBoolMapIterator {
	return StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) skip(n int) StringSkipIterator {
	return StringSkipIterator{
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

pub struct IntIntMapIterator {
	map_fn fn (int) int
mut:
	iterator IntIterator
}

pub fn (mut i IntIntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntIntMapIterator) filter(filter_fn fn (int) bool) IntFilterIterator {
	return IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_string(map_fn fn (int) string) IntStringMapIterator {
	return IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_int(map_fn fn (int) int) IntIntMapIterator {
	return IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_bool(map_fn fn (int) bool) IntBoolMapIterator {
	return IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) skip(n int) IntSkipIterator {
	return IntSkipIterator{
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

pub struct IntBoolMapIterator {
	map_fn fn (int) bool
mut:
	iterator IntIterator
}

pub fn (mut i IntBoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntBoolMapIterator) filter(filter_fn fn (bool) bool) BoolFilterIterator {
	return BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_string(map_fn fn (bool) string) BoolStringMapIterator {
	return BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_int(map_fn fn (bool) int) BoolIntMapIterator {
	return BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_bool(map_fn fn (bool) bool) BoolBoolMapIterator {
	return BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) skip(n int) BoolSkipIterator {
	return BoolSkipIterator{
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

pub struct BoolStringMapIterator {
	map_fn fn (bool) string
mut:
	iterator BoolIterator
}

pub fn (mut i BoolStringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolStringMapIterator) filter(filter_fn fn (string) bool) StringFilterIterator {
	return StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_string(map_fn fn (string) string) StringStringMapIterator {
	return StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_int(map_fn fn (string) int) StringIntMapIterator {
	return StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_bool(map_fn fn (string) bool) StringBoolMapIterator {
	return StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) skip(n int) StringSkipIterator {
	return StringSkipIterator{
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

pub struct BoolIntMapIterator {
	map_fn fn (bool) int
mut:
	iterator BoolIterator
}

pub fn (mut i BoolIntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolIntMapIterator) filter(filter_fn fn (int) bool) IntFilterIterator {
	return IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_string(map_fn fn (int) string) IntStringMapIterator {
	return IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_int(map_fn fn (int) int) IntIntMapIterator {
	return IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_bool(map_fn fn (int) bool) IntBoolMapIterator {
	return IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) skip(n int) IntSkipIterator {
	return IntSkipIterator{
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

pub struct BoolBoolMapIterator {
	map_fn fn (bool) bool
mut:
	iterator BoolIterator
}

pub fn (mut i BoolBoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolBoolMapIterator) filter(filter_fn fn (bool) bool) BoolFilterIterator {
	return BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_string(map_fn fn (bool) string) BoolStringMapIterator {
	return BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_int(map_fn fn (bool) int) BoolIntMapIterator {
	return BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_bool(map_fn fn (bool) bool) BoolBoolMapIterator {
	return BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) skip(n int) BoolSkipIterator {
	return BoolSkipIterator{
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

pub fn (mut i StringSkipIterator) filter(filter_fn fn (string) bool) StringFilterIterator {
	return StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_string(map_fn fn (string) string) StringStringMapIterator {
	return StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_int(map_fn fn (string) int) StringIntMapIterator {
	return StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_bool(map_fn fn (string) bool) StringBoolMapIterator {
	return StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) skip(n int) StringSkipIterator {
	return StringSkipIterator{
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

pub fn (mut i IntSkipIterator) filter(filter_fn fn (int) bool) IntFilterIterator {
	return IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_string(map_fn fn (int) string) IntStringMapIterator {
	return IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_int(map_fn fn (int) int) IntIntMapIterator {
	return IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_bool(map_fn fn (int) bool) IntBoolMapIterator {
	return IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) skip(n int) IntSkipIterator {
	return IntSkipIterator{
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

pub fn (mut i BoolSkipIterator) filter(filter_fn fn (bool) bool) BoolFilterIterator {
	return BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_string(map_fn fn (bool) string) BoolStringMapIterator {
	return BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_int(map_fn fn (bool) int) BoolIntMapIterator {
	return BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_bool(map_fn fn (bool) bool) BoolBoolMapIterator {
	return BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) skip(n int) BoolSkipIterator {
	return BoolSkipIterator{
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
