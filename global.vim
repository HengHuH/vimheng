" set some global variables and functions.

let g:iswindows = 0
let g:islinux = 0
let g:ismac = 0

if(has('win32') || has('win64'))
	let g:iswindows = 1
elseif(has('mac'))
	let g:ismac = 1
elseif(has('unix'))
	let g:islinux = 1
endif

if has('gui_running')
	let g:isGUI=1
else
	let g:isGUI=0
endif

