fun! ycmlighter#Enable()
	call ycmlighter#SetFlags()
endf

fun! ycmlighter#GetFlags()
	let debug_info = pyeval('ycm_state.DebugInfo()')
	let debug_list = split(debug_info, "\n")
	let flags=debug_list[3]
	return flags
endf

fun! ycmlighter#PrintFlags()
	echom ycmlighter#GetFlags()
endf

fun! ycmlighter#SetFlags()
	let flags = ycmlighter#GetFlags()
	let length = strlen(flags)
	let prunedflags = strpart(flags, 1, length-2)
	" omit first and last chars, as they are brackets
	let rawflags = substitute(prunedflags, "\'", "", "g")
	" remove surrounding apostrophes
	let flagslist = split(rawflags, ", ")
	if flagslist != g:ClighterCompileArgs
		call clighter#SetCompileArgs(flagslist)
	endif
endf

autocmd BufRead,BufEnter,FileType * call ycmlighter#SetFlags()

command! YcmLighterGetFlags call ycmlighter#PrintFlags()
command! YcmLighterSetFlagsForClighter call ycmlighter#SetFlags()
