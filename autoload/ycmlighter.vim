fun! ycmlighter#Enable()
endf

fun! ycmlighter#GetFlags()
	let debug_info = pyeval('ycm_state.DebugInfo()')
	let debug_list = split(debug_info, "\n")
	let flags=debug_list[3]
	echom flags
endf

command! YcmLighterGetFlags call ycmlighter#GetFlags()
