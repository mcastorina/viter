module main

import arrays

// Generator configuration
fn config() (map[string]IterConfig, []string) {
	basic_types := ['bool', 'string', 'int', 'byte', 'rune', 'f64']
	arr_types := basic_types.map('[]$it')
	all_types := arrays.merge(basic_types, arr_types)

	single := passthrough(all_types)
	return map{
		'array':      single
		'chain':      single
		'chunks':     to_array(basic_types)
		'collect':    single
		'count':      single
		'cycle':      single
		'debug':      single
		'every':      single
		'filter':     single
		'find':       single
		'fold':       passthrough(basic_types)
		'map':        permute(all_types)
		'rev':        single
		'skip':       single
		'skip_while': single
		'take':       single
		'take_while': single
		'tap':        single
		'windows':    to_array(basic_types)
	}, all_types
}

enum IterKind {
	passthrough
	transform
}

struct IterConfig {
	types []TypeInfo
	kind  IterKind
}

struct TypeInfo {
	type_in  string
	type_out string
}

// TypeOut == TypeIn
fn passthrough(types []string) IterConfig {
	mut info := []TypeInfo{cap: types.len}
	for typ in types {
		info << TypeInfo{
			type_in: typ
			type_out: typ
		}
	}
	return IterConfig{
		types: info
		kind: .passthrough
	}
}

// All combinations
fn permute(types []string) IterConfig {
	mut info := []TypeInfo{cap: types.len}
	for type_in in types {
		for type_out in types {
			info << TypeInfo{
				type_in: type_in
				type_out: type_out
			}
		}
	}
	return IterConfig{
		types: info
		kind: .transform
	}
}

// TypeOut == []TypeIn
fn to_array(types []string) IterConfig {
	mut info := []TypeInfo{cap: types.len}
	for typ in types {
		info << TypeInfo{
			type_in: typ
			type_out: '[]$typ'
		}
	}
	return IterConfig{
		types: info
		kind: .transform
	}
}

fn (c IterConfig) iter_out(iter string, info TypeInfo) string {
	return match c.kind {
		.passthrough {
			info.type_in() + to_camel(iter) + 'Iterator'
		}
		.transform {
			info.type_in() + info.type_out() + to_camel(iter) + 'Iterator'
		}
	}
}

fn (i TypeInfo) iter_in() string {
	return i.type_in() + 'Iterator'
}

fn (i TypeInfo) type_in() string {
	return name(i.type_in)
}

fn (i TypeInfo) type_out() string {
	return name(i.type_out)
}

fn name(typ string) string {
	if typ.starts_with('[][]') {
		return to_camel(typ[4..]) + '2DArray'
	}
	if typ.starts_with('[]') {
		return to_camel(typ[2..]) + '1DArray'
	}
	return typ.capitalize()
}

fn fn_name(typ string) string {
	if typ.starts_with('[]') {
		return typ[2..] + '_arr'
	}
	return typ
}

fn to_camel(s string) string {
	return s.split('_').map(it.capitalize()).join('')
}
