" Language:	Snakemake (extended from python.vim)
" Maintainer:	Jay Hesselberth (jay.hesselberth@gmail.com)
" Last Change:	2016 Aug 19
"

autogroup snakemake_syntax
    au BufNewFile,BufRead Snakefile set filetype=snakemake
    au BufNewFile,BufRead *.rules set filetype=snakemake
    au BufNewFile,BufRead *.snakefile set filetype=snakemake
    au BufNewFile,BufRead *.snake set filetype=snakemake

    autocmd FileType snakemake setlocal commentstring=#\ %s
autogroup END
