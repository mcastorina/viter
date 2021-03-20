import os

struct StructInfo {
	iter     string
	type_in  string
	type_out string
	has_out  bool
}

fn (s StructInfo) str() string {
	return [
		s.type_in,
		if s.has_out {
			s.type_out
		} else {
			''
		},
		s.iter,
		'Iterator',
	].map(it.capitalize()).join('')
}

fn get_iter_template(iter string) string {
	return os.read_file('templates/${iter}.v.tmpl') or { '' }
}

fn get_struct_template(iter string) ?string {
	return os.read_file('templates/${iter}_struct.v.tmpl')
}

fn gen_structs(iters []string, types []string) []StructInfo {
	mut structs := []StructInfo{}
	for iter in iters {
		has_out := get_iter_template(iter).contains('TypeOut')
		for type_in in types {
			if has_out {
				for type_out in types {
					structs << StructInfo{
						iter: iter
						type_in: type_in
						type_out: type_out
						has_out: has_out
					}
				}
			} else {
				structs << StructInfo{
					iter: iter
					type_in: type_in
					type_out: type_in
					has_out: has_out
				}
			}
		}
	}
	return structs
}

fn main() {
	iters := ['array', 'filter', 'map', 'skip', 'collect']
	types := ['string', 'int', 'bool']

	println('module viter\n')

	structs := gen_structs(iters, types)
	for typ in types {
		println('interface ${typ.capitalize()}Iterator { next() ?$typ }')
	}
	println('')

	for iter_out in structs {
		struct_template := get_struct_template(iter_out.iter) or { continue }
		sum := '${iter_out.type_in.capitalize()}Iterator'
		println(struct_template.replace_each(['TypeIn', iter_out.type_in, 'TypeOut', iter_out.type_out,
			'IterOut', iter_out.str(), 'IterIn', sum]))
		for iter in structs {
			if iter_out.type_out != iter.type_in {
				continue
			}
			iter_template := get_iter_template(iter.iter)
			println(iter_template.replace_each(['TypeIn', iter.type_in, 'TypeOut', iter.type_out,
				'IterOut', iter.str(), 'IterIn', iter_out.str()]))
		}
	}
}
