import yaml
import math
from jinja2 import Environment, FileSystemLoader

"""
Generator
"""
def generate(fname, src_path, dest_path, tmpl_context, fn_name='FUN'):

    tmpl_fname = fname + '_tmpl.sv'
    out_fname = dest_path + fname + '.sv'
    write_fname = out_fname

    #jin = Environment(loader=FileSystemLoader('.'), trim_blocks=True, lstrip_blocks=True)
    jin = Environment(loader=FileSystemLoader(src_path), trim_blocks=True, lstrip_blocks=True)
    template = jin.get_template(tmpl_fname)
    context = tmpl_context
    print(f'{fn_name} ||| context = {context} \n')

    with open(write_fname, mode="w", encoding="utf-8") as genfile:
        genfile.write(template.render(context))
        print(f'{fn_name} ||| ... wrote {write_fname} \n')

"""
Main function
"""
def main():
    
    # PATHS
    tmpl_path = '../tmpl/'                             # Path to templates folder
    src_path = '../src/'                               # Path to source folder
    tb_path = '../tb/'                                 # Path to testbench folder

    # Global Vars
    
    # Load specs
    
    context = {
        'ctxt': {
            'buf_d'         : 7,                    # Legal values are [(2^n) - 1] | n = 0, ..., N
            'buf_oreg_en'   : 1,
            'tbuf_d'        : 7,                    # Legal values are [(2^n) - 1] | n = 0, ..., N
            'tbuf_oreg_en'  : 0,
            'mem_oreg_en'   : 1,
            'chans'         : 2,
            'dual_port'     : 1,
            'line_l'        : 16,
            'line_s'        : 64,
            'block_d'       : 256,
            'udata_w'       : 8
        }
    }

    # Generate qpl_top_wrap.sv using template
    fname = 'qpl_top_wrap'
    generate(fname, tmpl_path, src_path, context, fn_name='generate')

    # Generate qpl_tb.sv using template
    fname = 'qpl_tb'
    generate(fname, tmpl_path, tb_path, context, fn_name='generate')

    # Generate qpl_synth_tb.sv using template
    fname = 'qpl_synth_tb'
    generate(fname, tmpl_path, tb_path, context, fn_name='generate')

if __name__ == "__main__":
    main()
