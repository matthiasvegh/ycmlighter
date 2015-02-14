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

augroup YcmLighterAutoStart
	au FileType c,cpp,objc,objcpp call ycmlighter#Enable()
augroup END

