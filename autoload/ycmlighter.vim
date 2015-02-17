fun! ycmlighter#Enable()
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
	echom prunedflags
	" omit first and last chars, as they are brackets
	let rawflags = substitute(prunedflags, "\'", "", "g")
	echom rawflags
	" remove surrounding apostrophes
	let flagslist = split(rawflags, ", ")
	call clighter#SetCompileArgs(flagslist)
endf

command! YcmLighterGetFlags call ycmlighter#PrintFlags()
command! YcmLighterSetFlagsForClighter call ycmlighter#SetFlags()
