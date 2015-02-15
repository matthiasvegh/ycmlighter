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
	let flagslist = split(flags, ", ")
	call clighter#SetCompileArgs(flagslist)
endf

command! YcmLighterGetFlags call ycmlighter#PrintFlags()
command! YcmLighterSetFlagsForClighter call ycmlighter#SetFlags()
