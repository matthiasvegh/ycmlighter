ycmlighter
==========

Intro
-----
Vim plugin for synchronizing [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) and [Clighter](https://github.com/bbchung/clighter).
This in turn means that you only need to configure YouCompleteMe, and Clighter will be passed the appropriate compilation flags.

Requirements
------------
ycmlighter itself does not have many requirements, it does however require that YouCompleteMe and Clighter be installed, which in turn require a recent version of vim, python and libclang. Check the documentation of YouCompleteMe and Clighter for detailed requirements.

Installation
------------
* Vundle:
```vim
Plugin 'Valloric/YouCompleteMe'
Plugin 'bbchung/clighter'
Plugin 'matthiasvegh/ycmlighter'
```

