module main

import os

fn get_method_template(iter string) ?string {
	dir := os.dir(@FILE)
	return os.read_file('$dir/templates/${iter}.v.tmpl')
}

fn get_struct_template(iter string) ?string {
	dir := os.dir(@FILE)
	return os.read_file('$dir/templates/${iter}_struct.v.tmpl')
}

fn main() {
	conf, types := config()

	println('module viter\n')

	// generate an interface per type
	for typ in types {
		println('interface ${name(typ)}Iterator { next() ?$typ }')
	}
	println('')

	// generate structs and methods
	for iter, conf_out in conf {
		println(conf_out.gen_structs(iter) or { continue })
		println(conf_out.gen_methods(conf, iter))
	}
}

fn (c IterConfig) gen_structs(iter string) ?string {
	template := get_struct_template(iter) or { return error('template not found') }
	mut structs := []string{cap: c.types.len}
	for info in c.types {
		s := template.replace_each(['MethodTypeIn', fn_name(info.type_in), 'MethodTypeOut',
			fn_name(info.type_out),
		])
		structs << s.replace_each(['TypeIn', info.type_in, 'TypeOut', info.type_out, 'IterOut',
			c.iter_out(iter, info), 'IterIn', info.iter_in()])
	}
	return structs.join('\n')
}

fn (c IterConfig) gen_methods(conf map[string]IterConfig, iter string) string {
	mut methods := []string{}
	for iter_info in c.types {
		for it, cin in conf {
			template := get_method_template(it) or { continue }
			for info in cin.types {
				if iter_info.type_out != info.type_in {
					continue
				}
				s := template.replace_each(['MethodTypeIn', fn_name(info.type_in), 'MethodTypeOut',
					fn_name(info.type_out),
				])
				methods << s.replace_each(['TypeIn', info.type_in, 'TypeOut', info.type_out, 'IterOut',
					cin.iter_out(it, info), 'IterIn', c.iter_out(iter, iter_info)])
			}
		}
	}
	return methods.join('\n')
}
