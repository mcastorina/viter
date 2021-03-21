module main

// Generator configuration
fn config() (map[string]IterConfig, []string) {
	// iters := ['array', 'filter', 'map', 'skip', 'collect', 'every', 'rev']
	types := ['bool', 'string', 'int', 'byte', 'rune', 'f64']

	single := passthrough(types)
	return map{
		'array':   single
		'filter':  single
		'map':     permute(types)
		'skip':    single
		'collect': single
		'every':   single
		'rev':     single
	}, types
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

fn (c IterConfig) iter_out(iter string, info TypeInfo) string {
	return match c.kind {
		.passthrough {
			info.type_in() + iter.capitalize() + 'Iterator'
		}
		.transform {
			info.type_in() + info.type_out() + iter.capitalize() + 'Iterator'
		}
	}
}

fn (i TypeInfo) iter_in() string {
	return i.type_in() + 'Iterator'
}

fn (i TypeInfo) type_in() string {
	return i.type_in.capitalize()
}

fn (i TypeInfo) type_out() string {
	return i.type_out.capitalize()
}
