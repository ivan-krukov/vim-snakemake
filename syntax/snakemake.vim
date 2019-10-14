" Language:	Snakemake (extended from python.vim)
" Maintainer:	Jay Hesselberth (jay.hesselberth@gmail.com)
" Last Change:	2016 Aug 19
"

" load settings from system python.vim (7.4)
source $VIMRUNTIME/syntax/python.vim

"
" Snakemake rules, as of version 3.3
"
" XXX N.B. several of the new defs are missing from this table i.e.
" subworkflow, touch etc
"
" rule       = "rule" (identifier | "") ":" ruleparams
" include    = "include:" stringliteral
" workdir    = "workdir:" stringliteral
" ni         = NEWLINE INDENT
" ruleparams = [ni input] [ni output] [ni params] [ni message] [ni threads] [ni (run | shell)] NEWLINE snakemake
" input      = "input" ":" parameter_list
" output     = "output" ":" parameter_list
" params     = "params" ":" parameter_list
" message    = "message" ":" stringliteral
" threads    = "threads" ":" integer
" resources  = "resources" ":" parameter_list
" version    = "version" ":" statement
" run        = "run" ":" ni statement
" shell      = "shell" ":" stringliteral

syn keyword pythonStatement	include workdir onsuccess onerror
syn keyword pythonStatement	ruleorder localrules configfile
syn keyword pythonStatement	touch protected temp wrapper
syn keyword pythonStatement	input output params message threads priority resources wildcard_constraints
syn keyword pythonStatement	version run shell benchmark snakefile log script shadow group cwl
syn keyword pythonStatement	rule subworkflow checkpoint nextgroup=pythonFunction skipwhite

syn keyword pythonBuiltin expand config temp protected directory ancient pipe otherworkflow

" similar to special def and class treatment from python.vim, except
" parenthetical part of def and class
syn match pythonFunction "\%(\%(rule\s\|subworkflow\s\|checkpoint\s\)\s*\)\@<=\h*" contained

syn sync match pythonSync grouphere NONE "^\s*\%(rule\|subworkflow\|checkpoint\)\s\+\h\w*\s*"

let b:current_syntax = "snakemake"
