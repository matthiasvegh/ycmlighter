if !exists(":YcmDebugInfo")
	echohl WarningMsg |
			\ echomsg "Ycmlighter unavailable: requires YouCompleteMe" |
			\ echohl None
	finish
endif

if !exists(":ClighterEnable")
	echohl WarningMsg |
			\ echomsg "Ycmlighter unavailable: requires clighter" |
			\ echohl None
	finish
endif

