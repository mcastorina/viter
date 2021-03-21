module viter

interface BoolIterator {
	next() ?bool
}

interface StringIterator {
	next() ?string
}

interface I8Iterator {
	next() ?i8
}

interface I16Iterator {
	next() ?i16
}

interface IntIterator {
	next() ?int
}

interface I64Iterator {
	next() ?i64
}

interface ByteIterator {
	next() ?byte
}

interface U16Iterator {
	next() ?u16
}

interface U32Iterator {
	next() ?u32
}

interface U64Iterator {
	next() ?u64
}

interface RuneIterator {
	next() ?rune
}

interface F32Iterator {
	next() ?f32
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

pub fn (mut i BoolArrayIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i BoolArrayIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i BoolArrayIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolArrayIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i BoolArrayIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i StringArrayIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i StringArrayIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i StringArrayIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringArrayIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i StringArrayIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct I8ArrayIterator {
	data []i8
mut:
	index int
}

pub fn (mut i I8ArrayIterator) next() ?i8 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_i8(arr []i8) &I8ArrayIterator {
	return &I8ArrayIterator{
		data: arr
	}
}

pub fn (mut i I8ArrayIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8ArrayIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8ArrayIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16ArrayIterator {
	data []i16
mut:
	index int
}

pub fn (mut i I16ArrayIterator) next() ?i16 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_i16(arr []i16) &I16ArrayIterator {
	return &I16ArrayIterator{
		data: arr
	}
}

pub fn (mut i I16ArrayIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16ArrayIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16ArrayIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i IntArrayIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i IntArrayIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i IntArrayIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntArrayIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i IntArrayIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct I64ArrayIterator {
	data []i64
mut:
	index int
}

pub fn (mut i I64ArrayIterator) next() ?i64 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_i64(arr []i64) &I64ArrayIterator {
	return &I64ArrayIterator{
		data: arr
	}
}

pub fn (mut i I64ArrayIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64ArrayIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64ArrayIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i ByteArrayIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i ByteArrayIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i ByteArrayIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteArrayIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i ByteArrayIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct U16ArrayIterator {
	data []u16
mut:
	index int
}

pub fn (mut i U16ArrayIterator) next() ?u16 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_u16(arr []u16) &U16ArrayIterator {
	return &U16ArrayIterator{
		data: arr
	}
}

pub fn (mut i U16ArrayIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16ArrayIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16ArrayIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32ArrayIterator {
	data []u32
mut:
	index int
}

pub fn (mut i U32ArrayIterator) next() ?u32 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_u32(arr []u32) &U32ArrayIterator {
	return &U32ArrayIterator{
		data: arr
	}
}

pub fn (mut i U32ArrayIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32ArrayIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32ArrayIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64ArrayIterator {
	data []u64
mut:
	index int
}

pub fn (mut i U64ArrayIterator) next() ?u64 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_u64(arr []u64) &U64ArrayIterator {
	return &U64ArrayIterator{
		data: arr
	}
}

pub fn (mut i U64ArrayIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64ArrayIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64ArrayIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i RuneArrayIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i RuneArrayIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i RuneArrayIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneArrayIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i RuneArrayIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct F32ArrayIterator {
	data []f32
mut:
	index int
}

pub fn (mut i F32ArrayIterator) next() ?f32 {
	if i.index >= i.data.len {
		return none
	}
	i.index++
	return i.data[i.index - 1]
}

pub fn iter_f32(arr []f32) &F32ArrayIterator {
	return &F32ArrayIterator{
		data: arr
	}
}

pub fn (mut i F32ArrayIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32ArrayIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32ArrayIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i F64ArrayIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i F64ArrayIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i F64ArrayIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ArrayIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i F64ArrayIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub fn (mut i BoolFilterIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i BoolFilterIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i BoolFilterIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolFilterIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i BoolFilterIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i StringFilterIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i StringFilterIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i StringFilterIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringFilterIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i StringFilterIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct I8FilterIterator {
	filter_fn fn (i8) bool
mut:
	iterator I8Iterator
}

pub fn (mut i I8FilterIterator) next() ?i8 {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i I8FilterIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8FilterIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8FilterIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16FilterIterator {
	filter_fn fn (i16) bool
mut:
	iterator I16Iterator
}

pub fn (mut i I16FilterIterator) next() ?i16 {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i I16FilterIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16FilterIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16FilterIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i IntFilterIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i IntFilterIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i IntFilterIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntFilterIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i IntFilterIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct I64FilterIterator {
	filter_fn fn (i64) bool
mut:
	iterator I64Iterator
}

pub fn (mut i I64FilterIterator) next() ?i64 {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i I64FilterIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64FilterIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64FilterIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i ByteFilterIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i ByteFilterIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i ByteFilterIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteFilterIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i ByteFilterIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct U16FilterIterator {
	filter_fn fn (u16) bool
mut:
	iterator U16Iterator
}

pub fn (mut i U16FilterIterator) next() ?u16 {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i U16FilterIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16FilterIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16FilterIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32FilterIterator {
	filter_fn fn (u32) bool
mut:
	iterator U32Iterator
}

pub fn (mut i U32FilterIterator) next() ?u32 {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i U32FilterIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32FilterIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32FilterIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64FilterIterator {
	filter_fn fn (u64) bool
mut:
	iterator U64Iterator
}

pub fn (mut i U64FilterIterator) next() ?u64 {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i U64FilterIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64FilterIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64FilterIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i RuneFilterIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i RuneFilterIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i RuneFilterIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneFilterIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i RuneFilterIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct F32FilterIterator {
	filter_fn fn (f32) bool
mut:
	iterator F32Iterator
}

pub fn (mut i F32FilterIterator) next() ?f32 {
	for true {
		item := i.iterator.next() ?
		if i.filter_fn(item) {
			return item
		}
	}
	return none
}

pub fn (mut i F32FilterIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32FilterIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32FilterIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i F64FilterIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i F64FilterIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i F64FilterIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64FilterIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i F64FilterIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub fn (mut i BoolBoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i BoolBoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i BoolBoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolBoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i BoolBoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i BoolStringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i BoolStringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i BoolStringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolStringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i BoolStringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct BoolI8MapIterator {
	map_fn fn (bool) i8
mut:
	iterator BoolIterator
}

pub fn (mut i BoolI8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolI8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolI8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolI8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct BoolI16MapIterator {
	map_fn fn (bool) i16
mut:
	iterator BoolIterator
}

pub fn (mut i BoolI16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolI16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolI16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolI16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i BoolIntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i BoolIntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i BoolIntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolIntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i BoolIntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct BoolI64MapIterator {
	map_fn fn (bool) i64
mut:
	iterator BoolIterator
}

pub fn (mut i BoolI64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolI64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolI64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolI64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i BoolByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i BoolByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i BoolByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i BoolByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct BoolU16MapIterator {
	map_fn fn (bool) u16
mut:
	iterator BoolIterator
}

pub fn (mut i BoolU16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolU16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolU16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolU16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct BoolU32MapIterator {
	map_fn fn (bool) u32
mut:
	iterator BoolIterator
}

pub fn (mut i BoolU32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolU32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolU32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolU32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct BoolU64MapIterator {
	map_fn fn (bool) u64
mut:
	iterator BoolIterator
}

pub fn (mut i BoolU64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolU64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolU64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolU64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i BoolRuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i BoolRuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i BoolRuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolRuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i BoolRuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct BoolF32MapIterator {
	map_fn fn (bool) f32
mut:
	iterator BoolIterator
}

pub fn (mut i BoolF32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i BoolF32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i BoolF32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i BoolF32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i BoolF64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i BoolF64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i BoolF64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolF64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i BoolF64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub fn (mut i StringBoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i StringBoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i StringBoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringBoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i StringBoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i StringStringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i StringStringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i StringStringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringStringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i StringStringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct StringI8MapIterator {
	map_fn fn (string) i8
mut:
	iterator StringIterator
}

pub fn (mut i StringI8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringI8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringI8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringI8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct StringI16MapIterator {
	map_fn fn (string) i16
mut:
	iterator StringIterator
}

pub fn (mut i StringI16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringI16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringI16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringI16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i StringIntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i StringIntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i StringIntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringIntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i StringIntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct StringI64MapIterator {
	map_fn fn (string) i64
mut:
	iterator StringIterator
}

pub fn (mut i StringI64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringI64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringI64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringI64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i StringByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i StringByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i StringByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i StringByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct StringU16MapIterator {
	map_fn fn (string) u16
mut:
	iterator StringIterator
}

pub fn (mut i StringU16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringU16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringU16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringU16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct StringU32MapIterator {
	map_fn fn (string) u32
mut:
	iterator StringIterator
}

pub fn (mut i StringU32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringU32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringU32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringU32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct StringU64MapIterator {
	map_fn fn (string) u64
mut:
	iterator StringIterator
}

pub fn (mut i StringU64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringU64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringU64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringU64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i StringRuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i StringRuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i StringRuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringRuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i StringRuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct StringF32MapIterator {
	map_fn fn (string) f32
mut:
	iterator StringIterator
}

pub fn (mut i StringF32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i StringF32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i StringF32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i StringF32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i StringF64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i StringF64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i StringF64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringF64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i StringF64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub struct I8BoolMapIterator {
	map_fn fn (i8) bool
mut:
	iterator I8Iterator
}

pub fn (mut i I8BoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8BoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8BoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8BoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8StringMapIterator {
	map_fn fn (i8) string
mut:
	iterator I8Iterator
}

pub fn (mut i I8StringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8StringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8StringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8StringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8I8MapIterator {
	map_fn fn (i8) i8
mut:
	iterator I8Iterator
}

pub fn (mut i I8I8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8I8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8I8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8I8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8I16MapIterator {
	map_fn fn (i8) i16
mut:
	iterator I8Iterator
}

pub fn (mut i I8I16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8I16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8I16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8I16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8IntMapIterator {
	map_fn fn (i8) int
mut:
	iterator I8Iterator
}

pub fn (mut i I8IntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8IntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8IntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8IntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8I64MapIterator {
	map_fn fn (i8) i64
mut:
	iterator I8Iterator
}

pub fn (mut i I8I64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8I64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8I64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8I64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8ByteMapIterator {
	map_fn fn (i8) byte
mut:
	iterator I8Iterator
}

pub fn (mut i I8ByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8ByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8ByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8ByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8U16MapIterator {
	map_fn fn (i8) u16
mut:
	iterator I8Iterator
}

pub fn (mut i I8U16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8U16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8U16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8U16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8U32MapIterator {
	map_fn fn (i8) u32
mut:
	iterator I8Iterator
}

pub fn (mut i I8U32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8U32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8U32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8U32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8U64MapIterator {
	map_fn fn (i8) u64
mut:
	iterator I8Iterator
}

pub fn (mut i I8U64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8U64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8U64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8U64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8RuneMapIterator {
	map_fn fn (i8) rune
mut:
	iterator I8Iterator
}

pub fn (mut i I8RuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8RuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8RuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8RuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8F32MapIterator {
	map_fn fn (i8) f32
mut:
	iterator I8Iterator
}

pub fn (mut i I8F32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8F32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8F32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8F32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I8F64MapIterator {
	map_fn fn (i8) f64
mut:
	iterator I8Iterator
}

pub fn (mut i I8F64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I8F64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8F64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8F64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16BoolMapIterator {
	map_fn fn (i16) bool
mut:
	iterator I16Iterator
}

pub fn (mut i I16BoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16BoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16BoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16BoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16StringMapIterator {
	map_fn fn (i16) string
mut:
	iterator I16Iterator
}

pub fn (mut i I16StringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16StringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16StringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16StringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16I8MapIterator {
	map_fn fn (i16) i8
mut:
	iterator I16Iterator
}

pub fn (mut i I16I8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16I8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16I8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16I8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16I16MapIterator {
	map_fn fn (i16) i16
mut:
	iterator I16Iterator
}

pub fn (mut i I16I16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16I16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16I16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16I16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16IntMapIterator {
	map_fn fn (i16) int
mut:
	iterator I16Iterator
}

pub fn (mut i I16IntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16IntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16IntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16IntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16I64MapIterator {
	map_fn fn (i16) i64
mut:
	iterator I16Iterator
}

pub fn (mut i I16I64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16I64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16I64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16I64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16ByteMapIterator {
	map_fn fn (i16) byte
mut:
	iterator I16Iterator
}

pub fn (mut i I16ByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16ByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16ByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16ByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16U16MapIterator {
	map_fn fn (i16) u16
mut:
	iterator I16Iterator
}

pub fn (mut i I16U16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16U16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16U16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16U16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16U32MapIterator {
	map_fn fn (i16) u32
mut:
	iterator I16Iterator
}

pub fn (mut i I16U32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16U32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16U32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16U32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16U64MapIterator {
	map_fn fn (i16) u64
mut:
	iterator I16Iterator
}

pub fn (mut i I16U64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16U64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16U64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16U64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16RuneMapIterator {
	map_fn fn (i16) rune
mut:
	iterator I16Iterator
}

pub fn (mut i I16RuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16RuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16RuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16RuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16F32MapIterator {
	map_fn fn (i16) f32
mut:
	iterator I16Iterator
}

pub fn (mut i I16F32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16F32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16F32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16F32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16F64MapIterator {
	map_fn fn (i16) f64
mut:
	iterator I16Iterator
}

pub fn (mut i I16F64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I16F64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16F64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16F64MapIterator) every(n int) &F64EveryIterator {
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

pub fn (mut i IntBoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i IntBoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i IntBoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntBoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i IntBoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i IntStringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i IntStringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i IntStringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntStringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i IntStringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct IntI8MapIterator {
	map_fn fn (int) i8
mut:
	iterator IntIterator
}

pub fn (mut i IntI8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntI8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntI8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntI8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct IntI16MapIterator {
	map_fn fn (int) i16
mut:
	iterator IntIterator
}

pub fn (mut i IntI16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntI16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntI16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntI16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i IntIntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i IntIntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i IntIntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntIntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i IntIntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct IntI64MapIterator {
	map_fn fn (int) i64
mut:
	iterator IntIterator
}

pub fn (mut i IntI64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntI64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntI64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntI64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i IntByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i IntByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i IntByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i IntByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct IntU16MapIterator {
	map_fn fn (int) u16
mut:
	iterator IntIterator
}

pub fn (mut i IntU16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntU16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntU16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntU16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct IntU32MapIterator {
	map_fn fn (int) u32
mut:
	iterator IntIterator
}

pub fn (mut i IntU32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntU32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntU32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntU32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct IntU64MapIterator {
	map_fn fn (int) u64
mut:
	iterator IntIterator
}

pub fn (mut i IntU64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntU64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntU64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntU64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i IntRuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i IntRuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i IntRuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntRuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i IntRuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct IntF32MapIterator {
	map_fn fn (int) f32
mut:
	iterator IntIterator
}

pub fn (mut i IntF32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i IntF32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i IntF32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i IntF32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i IntF64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i IntF64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i IntF64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntF64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i IntF64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub struct I64BoolMapIterator {
	map_fn fn (i64) bool
mut:
	iterator I64Iterator
}

pub fn (mut i I64BoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64BoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64BoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64BoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64StringMapIterator {
	map_fn fn (i64) string
mut:
	iterator I64Iterator
}

pub fn (mut i I64StringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64StringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64StringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64StringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64I8MapIterator {
	map_fn fn (i64) i8
mut:
	iterator I64Iterator
}

pub fn (mut i I64I8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64I8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64I8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64I8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64I16MapIterator {
	map_fn fn (i64) i16
mut:
	iterator I64Iterator
}

pub fn (mut i I64I16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64I16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64I16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64I16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64IntMapIterator {
	map_fn fn (i64) int
mut:
	iterator I64Iterator
}

pub fn (mut i I64IntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64IntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64IntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64IntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64I64MapIterator {
	map_fn fn (i64) i64
mut:
	iterator I64Iterator
}

pub fn (mut i I64I64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64I64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64I64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64I64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64ByteMapIterator {
	map_fn fn (i64) byte
mut:
	iterator I64Iterator
}

pub fn (mut i I64ByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64ByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64ByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64ByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64U16MapIterator {
	map_fn fn (i64) u16
mut:
	iterator I64Iterator
}

pub fn (mut i I64U16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64U16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64U16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64U16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64U32MapIterator {
	map_fn fn (i64) u32
mut:
	iterator I64Iterator
}

pub fn (mut i I64U32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64U32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64U32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64U32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64U64MapIterator {
	map_fn fn (i64) u64
mut:
	iterator I64Iterator
}

pub fn (mut i I64U64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64U64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64U64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64U64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64RuneMapIterator {
	map_fn fn (i64) rune
mut:
	iterator I64Iterator
}

pub fn (mut i I64RuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64RuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64RuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64RuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64F32MapIterator {
	map_fn fn (i64) f32
mut:
	iterator I64Iterator
}

pub fn (mut i I64F32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64F32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64F32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64F32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I64F64MapIterator {
	map_fn fn (i64) f64
mut:
	iterator I64Iterator
}

pub fn (mut i I64F64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i I64F64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64F64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64F64MapIterator) every(n int) &F64EveryIterator {
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

pub fn (mut i ByteBoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i ByteBoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i ByteBoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteBoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i ByteBoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i ByteStringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i ByteStringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i ByteStringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteStringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i ByteStringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct ByteI8MapIterator {
	map_fn fn (byte) i8
mut:
	iterator ByteIterator
}

pub fn (mut i ByteI8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteI8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteI8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteI8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct ByteI16MapIterator {
	map_fn fn (byte) i16
mut:
	iterator ByteIterator
}

pub fn (mut i ByteI16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteI16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteI16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteI16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i ByteIntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i ByteIntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i ByteIntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteIntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i ByteIntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct ByteI64MapIterator {
	map_fn fn (byte) i64
mut:
	iterator ByteIterator
}

pub fn (mut i ByteI64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteI64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteI64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteI64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i ByteByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i ByteByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i ByteByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i ByteByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct ByteU16MapIterator {
	map_fn fn (byte) u16
mut:
	iterator ByteIterator
}

pub fn (mut i ByteU16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteU16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteU16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteU16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct ByteU32MapIterator {
	map_fn fn (byte) u32
mut:
	iterator ByteIterator
}

pub fn (mut i ByteU32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteU32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteU32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteU32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct ByteU64MapIterator {
	map_fn fn (byte) u64
mut:
	iterator ByteIterator
}

pub fn (mut i ByteU64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteU64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteU64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteU64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i ByteRuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i ByteRuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i ByteRuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteRuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i ByteRuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct ByteF32MapIterator {
	map_fn fn (byte) f32
mut:
	iterator ByteIterator
}

pub fn (mut i ByteF32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i ByteF32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i ByteF32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i ByteF32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i ByteF64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i ByteF64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i ByteF64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteF64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i ByteF64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub struct U16BoolMapIterator {
	map_fn fn (u16) bool
mut:
	iterator U16Iterator
}

pub fn (mut i U16BoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16BoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16BoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16BoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16StringMapIterator {
	map_fn fn (u16) string
mut:
	iterator U16Iterator
}

pub fn (mut i U16StringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16StringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16StringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16StringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16I8MapIterator {
	map_fn fn (u16) i8
mut:
	iterator U16Iterator
}

pub fn (mut i U16I8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16I8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16I8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16I8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16I16MapIterator {
	map_fn fn (u16) i16
mut:
	iterator U16Iterator
}

pub fn (mut i U16I16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16I16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16I16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16I16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16IntMapIterator {
	map_fn fn (u16) int
mut:
	iterator U16Iterator
}

pub fn (mut i U16IntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16IntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16IntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16IntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16I64MapIterator {
	map_fn fn (u16) i64
mut:
	iterator U16Iterator
}

pub fn (mut i U16I64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16I64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16I64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16I64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16ByteMapIterator {
	map_fn fn (u16) byte
mut:
	iterator U16Iterator
}

pub fn (mut i U16ByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16ByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16ByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16ByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16U16MapIterator {
	map_fn fn (u16) u16
mut:
	iterator U16Iterator
}

pub fn (mut i U16U16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16U16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16U16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16U16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16U32MapIterator {
	map_fn fn (u16) u32
mut:
	iterator U16Iterator
}

pub fn (mut i U16U32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16U32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16U32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16U32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16U64MapIterator {
	map_fn fn (u16) u64
mut:
	iterator U16Iterator
}

pub fn (mut i U16U64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16U64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16U64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16U64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16RuneMapIterator {
	map_fn fn (u16) rune
mut:
	iterator U16Iterator
}

pub fn (mut i U16RuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16RuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16RuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16RuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16F32MapIterator {
	map_fn fn (u16) f32
mut:
	iterator U16Iterator
}

pub fn (mut i U16F32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16F32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16F32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16F32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U16F64MapIterator {
	map_fn fn (u16) f64
mut:
	iterator U16Iterator
}

pub fn (mut i U16F64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U16F64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16F64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16F64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32BoolMapIterator {
	map_fn fn (u32) bool
mut:
	iterator U32Iterator
}

pub fn (mut i U32BoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32BoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32BoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32BoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32StringMapIterator {
	map_fn fn (u32) string
mut:
	iterator U32Iterator
}

pub fn (mut i U32StringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32StringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32StringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32StringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32I8MapIterator {
	map_fn fn (u32) i8
mut:
	iterator U32Iterator
}

pub fn (mut i U32I8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32I8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32I8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32I8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32I16MapIterator {
	map_fn fn (u32) i16
mut:
	iterator U32Iterator
}

pub fn (mut i U32I16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32I16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32I16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32I16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32IntMapIterator {
	map_fn fn (u32) int
mut:
	iterator U32Iterator
}

pub fn (mut i U32IntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32IntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32IntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32IntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32I64MapIterator {
	map_fn fn (u32) i64
mut:
	iterator U32Iterator
}

pub fn (mut i U32I64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32I64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32I64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32I64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32ByteMapIterator {
	map_fn fn (u32) byte
mut:
	iterator U32Iterator
}

pub fn (mut i U32ByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32ByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32ByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32ByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32U16MapIterator {
	map_fn fn (u32) u16
mut:
	iterator U32Iterator
}

pub fn (mut i U32U16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32U16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32U16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32U16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32U32MapIterator {
	map_fn fn (u32) u32
mut:
	iterator U32Iterator
}

pub fn (mut i U32U32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32U32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32U32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32U32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32U64MapIterator {
	map_fn fn (u32) u64
mut:
	iterator U32Iterator
}

pub fn (mut i U32U64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32U64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32U64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32U64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32RuneMapIterator {
	map_fn fn (u32) rune
mut:
	iterator U32Iterator
}

pub fn (mut i U32RuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32RuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32RuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32RuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32F32MapIterator {
	map_fn fn (u32) f32
mut:
	iterator U32Iterator
}

pub fn (mut i U32F32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32F32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32F32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32F32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32F64MapIterator {
	map_fn fn (u32) f64
mut:
	iterator U32Iterator
}

pub fn (mut i U32F64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U32F64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32F64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32F64MapIterator) every(n int) &F64EveryIterator {
	return &F64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64BoolMapIterator {
	map_fn fn (u64) bool
mut:
	iterator U64Iterator
}

pub fn (mut i U64BoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64BoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64BoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64BoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64StringMapIterator {
	map_fn fn (u64) string
mut:
	iterator U64Iterator
}

pub fn (mut i U64StringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64StringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64StringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64StringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64I8MapIterator {
	map_fn fn (u64) i8
mut:
	iterator U64Iterator
}

pub fn (mut i U64I8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64I8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64I8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64I8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64I16MapIterator {
	map_fn fn (u64) i16
mut:
	iterator U64Iterator
}

pub fn (mut i U64I16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64I16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64I16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64I16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64IntMapIterator {
	map_fn fn (u64) int
mut:
	iterator U64Iterator
}

pub fn (mut i U64IntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64IntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64IntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64IntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64I64MapIterator {
	map_fn fn (u64) i64
mut:
	iterator U64Iterator
}

pub fn (mut i U64I64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64I64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64I64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64I64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64ByteMapIterator {
	map_fn fn (u64) byte
mut:
	iterator U64Iterator
}

pub fn (mut i U64ByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64ByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64ByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64ByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64U16MapIterator {
	map_fn fn (u64) u16
mut:
	iterator U64Iterator
}

pub fn (mut i U64U16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64U16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64U16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64U16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64U32MapIterator {
	map_fn fn (u64) u32
mut:
	iterator U64Iterator
}

pub fn (mut i U64U32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64U32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64U32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64U32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64U64MapIterator {
	map_fn fn (u64) u64
mut:
	iterator U64Iterator
}

pub fn (mut i U64U64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64U64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64U64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64U64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64RuneMapIterator {
	map_fn fn (u64) rune
mut:
	iterator U64Iterator
}

pub fn (mut i U64RuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64RuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64RuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64RuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64F32MapIterator {
	map_fn fn (u64) f32
mut:
	iterator U64Iterator
}

pub fn (mut i U64F32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64F32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64F32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64F32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64F64MapIterator {
	map_fn fn (u64) f64
mut:
	iterator U64Iterator
}

pub fn (mut i U64F64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i U64F64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64F64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64F64MapIterator) every(n int) &F64EveryIterator {
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

pub fn (mut i RuneBoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i RuneBoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i RuneBoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneBoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i RuneBoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i RuneStringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i RuneStringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i RuneStringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneStringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i RuneStringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct RuneI8MapIterator {
	map_fn fn (rune) i8
mut:
	iterator RuneIterator
}

pub fn (mut i RuneI8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneI8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneI8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneI8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct RuneI16MapIterator {
	map_fn fn (rune) i16
mut:
	iterator RuneIterator
}

pub fn (mut i RuneI16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneI16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneI16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneI16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i RuneIntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i RuneIntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i RuneIntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneIntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i RuneIntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct RuneI64MapIterator {
	map_fn fn (rune) i64
mut:
	iterator RuneIterator
}

pub fn (mut i RuneI64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneI64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneI64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneI64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i RuneByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i RuneByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i RuneByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i RuneByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct RuneU16MapIterator {
	map_fn fn (rune) u16
mut:
	iterator RuneIterator
}

pub fn (mut i RuneU16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneU16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneU16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneU16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct RuneU32MapIterator {
	map_fn fn (rune) u32
mut:
	iterator RuneIterator
}

pub fn (mut i RuneU32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneU32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneU32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneU32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct RuneU64MapIterator {
	map_fn fn (rune) u64
mut:
	iterator RuneIterator
}

pub fn (mut i RuneU64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneU64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneU64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneU64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i RuneRuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i RuneRuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i RuneRuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneRuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i RuneRuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct RuneF32MapIterator {
	map_fn fn (rune) f32
mut:
	iterator RuneIterator
}

pub fn (mut i RuneF32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i RuneF32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i RuneF32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i RuneF32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i RuneF64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i RuneF64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i RuneF64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneF64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i RuneF64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub struct F32BoolMapIterator {
	map_fn fn (f32) bool
mut:
	iterator F32Iterator
}

pub fn (mut i F32BoolMapIterator) next() ?bool {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32BoolMapIterator) filter(filter_fn fn (bool) bool) &BoolFilterIterator {
	return &BoolFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_bool(map_fn fn (bool) bool) &BoolBoolMapIterator {
	return &BoolBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_string(map_fn fn (bool) string) &BoolStringMapIterator {
	return &BoolStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_int(map_fn fn (bool) int) &BoolIntMapIterator {
	return &BoolIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_byte(map_fn fn (bool) byte) &BoolByteMapIterator {
	return &BoolByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_rune(map_fn fn (bool) rune) &BoolRuneMapIterator {
	return &BoolRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) map_f64(map_fn fn (bool) f64) &BoolF64MapIterator {
	return &BoolF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) skip(n int) &BoolSkipIterator {
	return &BoolSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32BoolMapIterator) collect() []bool {
	mut arr := []bool{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32BoolMapIterator) every(n int) &BoolEveryIterator {
	return &BoolEveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32StringMapIterator {
	map_fn fn (f32) string
mut:
	iterator F32Iterator
}

pub fn (mut i F32StringMapIterator) next() ?string {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32StringMapIterator) filter(filter_fn fn (string) bool) &StringFilterIterator {
	return &StringFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_bool(map_fn fn (string) bool) &StringBoolMapIterator {
	return &StringBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_string(map_fn fn (string) string) &StringStringMapIterator {
	return &StringStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_int(map_fn fn (string) int) &StringIntMapIterator {
	return &StringIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_byte(map_fn fn (string) byte) &StringByteMapIterator {
	return &StringByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_rune(map_fn fn (string) rune) &StringRuneMapIterator {
	return &StringRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) map_f64(map_fn fn (string) f64) &StringF64MapIterator {
	return &StringF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) skip(n int) &StringSkipIterator {
	return &StringSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32StringMapIterator) collect() []string {
	mut arr := []string{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32StringMapIterator) every(n int) &StringEveryIterator {
	return &StringEveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32I8MapIterator {
	map_fn fn (f32) i8
mut:
	iterator F32Iterator
}

pub fn (mut i F32I8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32I8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32I8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32I8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32I16MapIterator {
	map_fn fn (f32) i16
mut:
	iterator F32Iterator
}

pub fn (mut i F32I16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32I16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32I16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32I16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32IntMapIterator {
	map_fn fn (f32) int
mut:
	iterator F32Iterator
}

pub fn (mut i F32IntMapIterator) next() ?int {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32IntMapIterator) filter(filter_fn fn (int) bool) &IntFilterIterator {
	return &IntFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_bool(map_fn fn (int) bool) &IntBoolMapIterator {
	return &IntBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_string(map_fn fn (int) string) &IntStringMapIterator {
	return &IntStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_int(map_fn fn (int) int) &IntIntMapIterator {
	return &IntIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_byte(map_fn fn (int) byte) &IntByteMapIterator {
	return &IntByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_rune(map_fn fn (int) rune) &IntRuneMapIterator {
	return &IntRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) map_f64(map_fn fn (int) f64) &IntF64MapIterator {
	return &IntF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) skip(n int) &IntSkipIterator {
	return &IntSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32IntMapIterator) collect() []int {
	mut arr := []int{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32IntMapIterator) every(n int) &IntEveryIterator {
	return &IntEveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32I64MapIterator {
	map_fn fn (f32) i64
mut:
	iterator F32Iterator
}

pub fn (mut i F32I64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32I64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32I64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32I64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32ByteMapIterator {
	map_fn fn (f32) byte
mut:
	iterator F32Iterator
}

pub fn (mut i F32ByteMapIterator) next() ?byte {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32ByteMapIterator) filter(filter_fn fn (byte) bool) &ByteFilterIterator {
	return &ByteFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_bool(map_fn fn (byte) bool) &ByteBoolMapIterator {
	return &ByteBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_string(map_fn fn (byte) string) &ByteStringMapIterator {
	return &ByteStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_int(map_fn fn (byte) int) &ByteIntMapIterator {
	return &ByteIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_byte(map_fn fn (byte) byte) &ByteByteMapIterator {
	return &ByteByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_rune(map_fn fn (byte) rune) &ByteRuneMapIterator {
	return &ByteRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) map_f64(map_fn fn (byte) f64) &ByteF64MapIterator {
	return &ByteF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) skip(n int) &ByteSkipIterator {
	return &ByteSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32ByteMapIterator) collect() []byte {
	mut arr := []byte{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32ByteMapIterator) every(n int) &ByteEveryIterator {
	return &ByteEveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32U16MapIterator {
	map_fn fn (f32) u16
mut:
	iterator F32Iterator
}

pub fn (mut i F32U16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32U16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32U16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32U16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32U32MapIterator {
	map_fn fn (f32) u32
mut:
	iterator F32Iterator
}

pub fn (mut i F32U32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32U32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32U32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32U32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32U64MapIterator {
	map_fn fn (f32) u64
mut:
	iterator F32Iterator
}

pub fn (mut i F32U64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32U64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32U64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32U64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32RuneMapIterator {
	map_fn fn (f32) rune
mut:
	iterator F32Iterator
}

pub fn (mut i F32RuneMapIterator) next() ?rune {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32RuneMapIterator) filter(filter_fn fn (rune) bool) &RuneFilterIterator {
	return &RuneFilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_bool(map_fn fn (rune) bool) &RuneBoolMapIterator {
	return &RuneBoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_string(map_fn fn (rune) string) &RuneStringMapIterator {
	return &RuneStringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_int(map_fn fn (rune) int) &RuneIntMapIterator {
	return &RuneIntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_byte(map_fn fn (rune) byte) &RuneByteMapIterator {
	return &RuneByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_rune(map_fn fn (rune) rune) &RuneRuneMapIterator {
	return &RuneRuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) map_f64(map_fn fn (rune) f64) &RuneF64MapIterator {
	return &RuneF64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) skip(n int) &RuneSkipIterator {
	return &RuneSkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32RuneMapIterator) collect() []rune {
	mut arr := []rune{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32RuneMapIterator) every(n int) &RuneEveryIterator {
	return &RuneEveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32F32MapIterator {
	map_fn fn (f32) f32
mut:
	iterator F32Iterator
}

pub fn (mut i F32F32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32F32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32F32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32F32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F32F64MapIterator {
	map_fn fn (f32) f64
mut:
	iterator F32Iterator
}

pub fn (mut i F32F64MapIterator) next() ?f64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F32F64MapIterator) filter(filter_fn fn (f64) bool) &F64FilterIterator {
	return &F64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_bool(map_fn fn (f64) bool) &F64BoolMapIterator {
	return &F64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_string(map_fn fn (f64) string) &F64StringMapIterator {
	return &F64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_int(map_fn fn (f64) int) &F64IntMapIterator {
	return &F64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_byte(map_fn fn (f64) byte) &F64ByteMapIterator {
	return &F64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_rune(map_fn fn (f64) rune) &F64RuneMapIterator {
	return &F64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) map_f64(map_fn fn (f64) f64) &F64F64MapIterator {
	return &F64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) skip(n int) &F64SkipIterator {
	return &F64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32F64MapIterator) collect() []f64 {
	mut arr := []f64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32F64MapIterator) every(n int) &F64EveryIterator {
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

pub fn (mut i F64BoolMapIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i F64BoolMapIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i F64BoolMapIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64BoolMapIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i F64BoolMapIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i F64StringMapIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i F64StringMapIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i F64StringMapIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64StringMapIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i F64StringMapIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct F64I8MapIterator {
	map_fn fn (f64) i8
mut:
	iterator F64Iterator
}

pub fn (mut i F64I8MapIterator) next() ?i8 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64I8MapIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64I8MapIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64I8MapIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F64I16MapIterator {
	map_fn fn (f64) i16
mut:
	iterator F64Iterator
}

pub fn (mut i F64I16MapIterator) next() ?i16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64I16MapIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64I16MapIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64I16MapIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i F64IntMapIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i F64IntMapIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i F64IntMapIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64IntMapIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i F64IntMapIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct F64I64MapIterator {
	map_fn fn (f64) i64
mut:
	iterator F64Iterator
}

pub fn (mut i F64I64MapIterator) next() ?i64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64I64MapIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64I64MapIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64I64MapIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i F64ByteMapIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i F64ByteMapIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i F64ByteMapIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64ByteMapIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i F64ByteMapIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct F64U16MapIterator {
	map_fn fn (f64) u16
mut:
	iterator F64Iterator
}

pub fn (mut i F64U16MapIterator) next() ?u16 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64U16MapIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64U16MapIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64U16MapIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F64U32MapIterator {
	map_fn fn (f64) u32
mut:
	iterator F64Iterator
}

pub fn (mut i F64U32MapIterator) next() ?u32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64U32MapIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64U32MapIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64U32MapIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct F64U64MapIterator {
	map_fn fn (f64) u64
mut:
	iterator F64Iterator
}

pub fn (mut i F64U64MapIterator) next() ?u64 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64U64MapIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64U64MapIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64U64MapIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i F64RuneMapIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i F64RuneMapIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i F64RuneMapIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64RuneMapIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i F64RuneMapIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct F64F32MapIterator {
	map_fn fn (f64) f32
mut:
	iterator F64Iterator
}

pub fn (mut i F64F32MapIterator) next() ?f32 {
	item := i.iterator.next() ?
	return i.map_fn(item)
}

pub fn (mut i F64F32MapIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F64F32MapIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F64F32MapIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i F64F64MapIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i F64F64MapIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i F64F64MapIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64F64MapIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i F64F64MapIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub fn (mut i BoolSkipIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i BoolSkipIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i BoolSkipIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolSkipIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i BoolSkipIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i StringSkipIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i StringSkipIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i StringSkipIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringSkipIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i StringSkipIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct I8SkipIterator {
	n int
mut:
	index    int
	iterator I8Iterator
}

pub fn (mut i I8SkipIterator) next() ?i8 {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i I8SkipIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8SkipIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8SkipIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16SkipIterator {
	n int
mut:
	index    int
	iterator I16Iterator
}

pub fn (mut i I16SkipIterator) next() ?i16 {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i I16SkipIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16SkipIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16SkipIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i IntSkipIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i IntSkipIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i IntSkipIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntSkipIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i IntSkipIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct I64SkipIterator {
	n int
mut:
	index    int
	iterator I64Iterator
}

pub fn (mut i I64SkipIterator) next() ?i64 {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i I64SkipIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64SkipIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64SkipIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i ByteSkipIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i ByteSkipIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i ByteSkipIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteSkipIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i ByteSkipIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct U16SkipIterator {
	n int
mut:
	index    int
	iterator U16Iterator
}

pub fn (mut i U16SkipIterator) next() ?u16 {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i U16SkipIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16SkipIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16SkipIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32SkipIterator {
	n int
mut:
	index    int
	iterator U32Iterator
}

pub fn (mut i U32SkipIterator) next() ?u32 {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i U32SkipIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32SkipIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32SkipIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64SkipIterator {
	n int
mut:
	index    int
	iterator U64Iterator
}

pub fn (mut i U64SkipIterator) next() ?u64 {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i U64SkipIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64SkipIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64SkipIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i RuneSkipIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i RuneSkipIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i RuneSkipIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneSkipIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i RuneSkipIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct F32SkipIterator {
	n int
mut:
	index    int
	iterator F32Iterator
}

pub fn (mut i F32SkipIterator) next() ?f32 {
	for i.index < i.n {
		i.iterator.next() ?
		i.index++
	}
	return i.iterator.next()
}

pub fn (mut i F32SkipIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32SkipIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32SkipIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i F64SkipIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i F64SkipIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i F64SkipIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64SkipIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i F64SkipIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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

pub fn (mut i BoolEveryIterator) map_i8(map_fn fn (bool) i8) &BoolI8MapIterator {
	return &BoolI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_i16(map_fn fn (bool) i16) &BoolI16MapIterator {
	return &BoolI16MapIterator{
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

pub fn (mut i BoolEveryIterator) map_i64(map_fn fn (bool) i64) &BoolI64MapIterator {
	return &BoolI64MapIterator{
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

pub fn (mut i BoolEveryIterator) map_u16(map_fn fn (bool) u16) &BoolU16MapIterator {
	return &BoolU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_u32(map_fn fn (bool) u32) &BoolU32MapIterator {
	return &BoolU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i BoolEveryIterator) map_u64(map_fn fn (bool) u64) &BoolU64MapIterator {
	return &BoolU64MapIterator{
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

pub fn (mut i BoolEveryIterator) map_f32(map_fn fn (bool) f32) &BoolF32MapIterator {
	return &BoolF32MapIterator{
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

pub fn (mut i StringEveryIterator) map_i8(map_fn fn (string) i8) &StringI8MapIterator {
	return &StringI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_i16(map_fn fn (string) i16) &StringI16MapIterator {
	return &StringI16MapIterator{
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

pub fn (mut i StringEveryIterator) map_i64(map_fn fn (string) i64) &StringI64MapIterator {
	return &StringI64MapIterator{
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

pub fn (mut i StringEveryIterator) map_u16(map_fn fn (string) u16) &StringU16MapIterator {
	return &StringU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_u32(map_fn fn (string) u32) &StringU32MapIterator {
	return &StringU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i StringEveryIterator) map_u64(map_fn fn (string) u64) &StringU64MapIterator {
	return &StringU64MapIterator{
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

pub fn (mut i StringEveryIterator) map_f32(map_fn fn (string) f32) &StringF32MapIterator {
	return &StringF32MapIterator{
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

pub struct I8EveryIterator {
	n int
mut:
	iterator I8Iterator
}

pub fn (mut i I8EveryIterator) next() ?i8 {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i I8EveryIterator) filter(filter_fn fn (i8) bool) &I8FilterIterator {
	return &I8FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_bool(map_fn fn (i8) bool) &I8BoolMapIterator {
	return &I8BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_string(map_fn fn (i8) string) &I8StringMapIterator {
	return &I8StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_i8(map_fn fn (i8) i8) &I8I8MapIterator {
	return &I8I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_i16(map_fn fn (i8) i16) &I8I16MapIterator {
	return &I8I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_int(map_fn fn (i8) int) &I8IntMapIterator {
	return &I8IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_i64(map_fn fn (i8) i64) &I8I64MapIterator {
	return &I8I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_byte(map_fn fn (i8) byte) &I8ByteMapIterator {
	return &I8ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_u16(map_fn fn (i8) u16) &I8U16MapIterator {
	return &I8U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_u32(map_fn fn (i8) u32) &I8U32MapIterator {
	return &I8U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_u64(map_fn fn (i8) u64) &I8U64MapIterator {
	return &I8U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_rune(map_fn fn (i8) rune) &I8RuneMapIterator {
	return &I8RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_f32(map_fn fn (i8) f32) &I8F32MapIterator {
	return &I8F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) map_f64(map_fn fn (i8) f64) &I8F64MapIterator {
	return &I8F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) skip(n int) &I8SkipIterator {
	return &I8SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I8EveryIterator) collect() []i8 {
	mut arr := []i8{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I8EveryIterator) every(n int) &I8EveryIterator {
	return &I8EveryIterator{
		n: n
		iterator: i
	}
}

pub struct I16EveryIterator {
	n int
mut:
	iterator I16Iterator
}

pub fn (mut i I16EveryIterator) next() ?i16 {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i I16EveryIterator) filter(filter_fn fn (i16) bool) &I16FilterIterator {
	return &I16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_bool(map_fn fn (i16) bool) &I16BoolMapIterator {
	return &I16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_string(map_fn fn (i16) string) &I16StringMapIterator {
	return &I16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_i8(map_fn fn (i16) i8) &I16I8MapIterator {
	return &I16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_i16(map_fn fn (i16) i16) &I16I16MapIterator {
	return &I16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_int(map_fn fn (i16) int) &I16IntMapIterator {
	return &I16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_i64(map_fn fn (i16) i64) &I16I64MapIterator {
	return &I16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_byte(map_fn fn (i16) byte) &I16ByteMapIterator {
	return &I16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_u16(map_fn fn (i16) u16) &I16U16MapIterator {
	return &I16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_u32(map_fn fn (i16) u32) &I16U32MapIterator {
	return &I16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_u64(map_fn fn (i16) u64) &I16U64MapIterator {
	return &I16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_rune(map_fn fn (i16) rune) &I16RuneMapIterator {
	return &I16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_f32(map_fn fn (i16) f32) &I16F32MapIterator {
	return &I16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) map_f64(map_fn fn (i16) f64) &I16F64MapIterator {
	return &I16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) skip(n int) &I16SkipIterator {
	return &I16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I16EveryIterator) collect() []i16 {
	mut arr := []i16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I16EveryIterator) every(n int) &I16EveryIterator {
	return &I16EveryIterator{
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

pub fn (mut i IntEveryIterator) map_i8(map_fn fn (int) i8) &IntI8MapIterator {
	return &IntI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_i16(map_fn fn (int) i16) &IntI16MapIterator {
	return &IntI16MapIterator{
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

pub fn (mut i IntEveryIterator) map_i64(map_fn fn (int) i64) &IntI64MapIterator {
	return &IntI64MapIterator{
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

pub fn (mut i IntEveryIterator) map_u16(map_fn fn (int) u16) &IntU16MapIterator {
	return &IntU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_u32(map_fn fn (int) u32) &IntU32MapIterator {
	return &IntU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i IntEveryIterator) map_u64(map_fn fn (int) u64) &IntU64MapIterator {
	return &IntU64MapIterator{
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

pub fn (mut i IntEveryIterator) map_f32(map_fn fn (int) f32) &IntF32MapIterator {
	return &IntF32MapIterator{
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

pub struct I64EveryIterator {
	n int
mut:
	iterator I64Iterator
}

pub fn (mut i I64EveryIterator) next() ?i64 {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i I64EveryIterator) filter(filter_fn fn (i64) bool) &I64FilterIterator {
	return &I64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_bool(map_fn fn (i64) bool) &I64BoolMapIterator {
	return &I64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_string(map_fn fn (i64) string) &I64StringMapIterator {
	return &I64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_i8(map_fn fn (i64) i8) &I64I8MapIterator {
	return &I64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_i16(map_fn fn (i64) i16) &I64I16MapIterator {
	return &I64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_int(map_fn fn (i64) int) &I64IntMapIterator {
	return &I64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_i64(map_fn fn (i64) i64) &I64I64MapIterator {
	return &I64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_byte(map_fn fn (i64) byte) &I64ByteMapIterator {
	return &I64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_u16(map_fn fn (i64) u16) &I64U16MapIterator {
	return &I64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_u32(map_fn fn (i64) u32) &I64U32MapIterator {
	return &I64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_u64(map_fn fn (i64) u64) &I64U64MapIterator {
	return &I64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_rune(map_fn fn (i64) rune) &I64RuneMapIterator {
	return &I64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_f32(map_fn fn (i64) f32) &I64F32MapIterator {
	return &I64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) map_f64(map_fn fn (i64) f64) &I64F64MapIterator {
	return &I64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) skip(n int) &I64SkipIterator {
	return &I64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i I64EveryIterator) collect() []i64 {
	mut arr := []i64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i I64EveryIterator) every(n int) &I64EveryIterator {
	return &I64EveryIterator{
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

pub fn (mut i ByteEveryIterator) map_i8(map_fn fn (byte) i8) &ByteI8MapIterator {
	return &ByteI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_i16(map_fn fn (byte) i16) &ByteI16MapIterator {
	return &ByteI16MapIterator{
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

pub fn (mut i ByteEveryIterator) map_i64(map_fn fn (byte) i64) &ByteI64MapIterator {
	return &ByteI64MapIterator{
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

pub fn (mut i ByteEveryIterator) map_u16(map_fn fn (byte) u16) &ByteU16MapIterator {
	return &ByteU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_u32(map_fn fn (byte) u32) &ByteU32MapIterator {
	return &ByteU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i ByteEveryIterator) map_u64(map_fn fn (byte) u64) &ByteU64MapIterator {
	return &ByteU64MapIterator{
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

pub fn (mut i ByteEveryIterator) map_f32(map_fn fn (byte) f32) &ByteF32MapIterator {
	return &ByteF32MapIterator{
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

pub struct U16EveryIterator {
	n int
mut:
	iterator U16Iterator
}

pub fn (mut i U16EveryIterator) next() ?u16 {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i U16EveryIterator) filter(filter_fn fn (u16) bool) &U16FilterIterator {
	return &U16FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_bool(map_fn fn (u16) bool) &U16BoolMapIterator {
	return &U16BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_string(map_fn fn (u16) string) &U16StringMapIterator {
	return &U16StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_i8(map_fn fn (u16) i8) &U16I8MapIterator {
	return &U16I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_i16(map_fn fn (u16) i16) &U16I16MapIterator {
	return &U16I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_int(map_fn fn (u16) int) &U16IntMapIterator {
	return &U16IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_i64(map_fn fn (u16) i64) &U16I64MapIterator {
	return &U16I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_byte(map_fn fn (u16) byte) &U16ByteMapIterator {
	return &U16ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_u16(map_fn fn (u16) u16) &U16U16MapIterator {
	return &U16U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_u32(map_fn fn (u16) u32) &U16U32MapIterator {
	return &U16U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_u64(map_fn fn (u16) u64) &U16U64MapIterator {
	return &U16U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_rune(map_fn fn (u16) rune) &U16RuneMapIterator {
	return &U16RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_f32(map_fn fn (u16) f32) &U16F32MapIterator {
	return &U16F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) map_f64(map_fn fn (u16) f64) &U16F64MapIterator {
	return &U16F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) skip(n int) &U16SkipIterator {
	return &U16SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U16EveryIterator) collect() []u16 {
	mut arr := []u16{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U16EveryIterator) every(n int) &U16EveryIterator {
	return &U16EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U32EveryIterator {
	n int
mut:
	iterator U32Iterator
}

pub fn (mut i U32EveryIterator) next() ?u32 {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i U32EveryIterator) filter(filter_fn fn (u32) bool) &U32FilterIterator {
	return &U32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_bool(map_fn fn (u32) bool) &U32BoolMapIterator {
	return &U32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_string(map_fn fn (u32) string) &U32StringMapIterator {
	return &U32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_i8(map_fn fn (u32) i8) &U32I8MapIterator {
	return &U32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_i16(map_fn fn (u32) i16) &U32I16MapIterator {
	return &U32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_int(map_fn fn (u32) int) &U32IntMapIterator {
	return &U32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_i64(map_fn fn (u32) i64) &U32I64MapIterator {
	return &U32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_byte(map_fn fn (u32) byte) &U32ByteMapIterator {
	return &U32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_u16(map_fn fn (u32) u16) &U32U16MapIterator {
	return &U32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_u32(map_fn fn (u32) u32) &U32U32MapIterator {
	return &U32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_u64(map_fn fn (u32) u64) &U32U64MapIterator {
	return &U32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_rune(map_fn fn (u32) rune) &U32RuneMapIterator {
	return &U32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_f32(map_fn fn (u32) f32) &U32F32MapIterator {
	return &U32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) map_f64(map_fn fn (u32) f64) &U32F64MapIterator {
	return &U32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) skip(n int) &U32SkipIterator {
	return &U32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U32EveryIterator) collect() []u32 {
	mut arr := []u32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U32EveryIterator) every(n int) &U32EveryIterator {
	return &U32EveryIterator{
		n: n
		iterator: i
	}
}

pub struct U64EveryIterator {
	n int
mut:
	iterator U64Iterator
}

pub fn (mut i U64EveryIterator) next() ?u64 {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i U64EveryIterator) filter(filter_fn fn (u64) bool) &U64FilterIterator {
	return &U64FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_bool(map_fn fn (u64) bool) &U64BoolMapIterator {
	return &U64BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_string(map_fn fn (u64) string) &U64StringMapIterator {
	return &U64StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_i8(map_fn fn (u64) i8) &U64I8MapIterator {
	return &U64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_i16(map_fn fn (u64) i16) &U64I16MapIterator {
	return &U64I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_int(map_fn fn (u64) int) &U64IntMapIterator {
	return &U64IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_i64(map_fn fn (u64) i64) &U64I64MapIterator {
	return &U64I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_byte(map_fn fn (u64) byte) &U64ByteMapIterator {
	return &U64ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_u16(map_fn fn (u64) u16) &U64U16MapIterator {
	return &U64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_u32(map_fn fn (u64) u32) &U64U32MapIterator {
	return &U64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_u64(map_fn fn (u64) u64) &U64U64MapIterator {
	return &U64U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_rune(map_fn fn (u64) rune) &U64RuneMapIterator {
	return &U64RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_f32(map_fn fn (u64) f32) &U64F32MapIterator {
	return &U64F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) map_f64(map_fn fn (u64) f64) &U64F64MapIterator {
	return &U64F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) skip(n int) &U64SkipIterator {
	return &U64SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i U64EveryIterator) collect() []u64 {
	mut arr := []u64{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i U64EveryIterator) every(n int) &U64EveryIterator {
	return &U64EveryIterator{
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

pub fn (mut i RuneEveryIterator) map_i8(map_fn fn (rune) i8) &RuneI8MapIterator {
	return &RuneI8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_i16(map_fn fn (rune) i16) &RuneI16MapIterator {
	return &RuneI16MapIterator{
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

pub fn (mut i RuneEveryIterator) map_i64(map_fn fn (rune) i64) &RuneI64MapIterator {
	return &RuneI64MapIterator{
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

pub fn (mut i RuneEveryIterator) map_u16(map_fn fn (rune) u16) &RuneU16MapIterator {
	return &RuneU16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_u32(map_fn fn (rune) u32) &RuneU32MapIterator {
	return &RuneU32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i RuneEveryIterator) map_u64(map_fn fn (rune) u64) &RuneU64MapIterator {
	return &RuneU64MapIterator{
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

pub fn (mut i RuneEveryIterator) map_f32(map_fn fn (rune) f32) &RuneF32MapIterator {
	return &RuneF32MapIterator{
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

pub struct F32EveryIterator {
	n int
mut:
	iterator F32Iterator
}

pub fn (mut i F32EveryIterator) next() ?f32 {
	ret := i.iterator.next() ?
	for _ in 1 .. i.n {
		i.iterator.next() or { break }
	}
	return ret
}

pub fn (mut i F32EveryIterator) filter(filter_fn fn (f32) bool) &F32FilterIterator {
	return &F32FilterIterator{
		filter_fn: filter_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_bool(map_fn fn (f32) bool) &F32BoolMapIterator {
	return &F32BoolMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_string(map_fn fn (f32) string) &F32StringMapIterator {
	return &F32StringMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_i8(map_fn fn (f32) i8) &F32I8MapIterator {
	return &F32I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_i16(map_fn fn (f32) i16) &F32I16MapIterator {
	return &F32I16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_int(map_fn fn (f32) int) &F32IntMapIterator {
	return &F32IntMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_i64(map_fn fn (f32) i64) &F32I64MapIterator {
	return &F32I64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_byte(map_fn fn (f32) byte) &F32ByteMapIterator {
	return &F32ByteMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_u16(map_fn fn (f32) u16) &F32U16MapIterator {
	return &F32U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_u32(map_fn fn (f32) u32) &F32U32MapIterator {
	return &F32U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_u64(map_fn fn (f32) u64) &F32U64MapIterator {
	return &F32U64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_rune(map_fn fn (f32) rune) &F32RuneMapIterator {
	return &F32RuneMapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_f32(map_fn fn (f32) f32) &F32F32MapIterator {
	return &F32F32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) map_f64(map_fn fn (f32) f64) &F32F64MapIterator {
	return &F32F64MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) skip(n int) &F32SkipIterator {
	return &F32SkipIterator{
		n: n
		iterator: i
	}
}

pub fn (mut i F32EveryIterator) collect() []f32 {
	mut arr := []f32{}
	for item in i {
		arr << item
	}
	return arr
}

pub fn (mut i F32EveryIterator) every(n int) &F32EveryIterator {
	return &F32EveryIterator{
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

pub fn (mut i F64EveryIterator) map_i8(map_fn fn (f64) i8) &F64I8MapIterator {
	return &F64I8MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_i16(map_fn fn (f64) i16) &F64I16MapIterator {
	return &F64I16MapIterator{
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

pub fn (mut i F64EveryIterator) map_i64(map_fn fn (f64) i64) &F64I64MapIterator {
	return &F64I64MapIterator{
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

pub fn (mut i F64EveryIterator) map_u16(map_fn fn (f64) u16) &F64U16MapIterator {
	return &F64U16MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_u32(map_fn fn (f64) u32) &F64U32MapIterator {
	return &F64U32MapIterator{
		map_fn: map_fn
		iterator: i
	}
}

pub fn (mut i F64EveryIterator) map_u64(map_fn fn (f64) u64) &F64U64MapIterator {
	return &F64U64MapIterator{
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

pub fn (mut i F64EveryIterator) map_f32(map_fn fn (f64) f32) &F64F32MapIterator {
	return &F64F32MapIterator{
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
