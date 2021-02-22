" Color Scheme
set background=dark
colorscheme solarized

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if g:iswindows
	set fileencoding=utf-8
else
	set fileencoding=utf-8
endif

" 解决 Window gvim 菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Set gui font
if g:isGUI
	if g:iswindows
		" set guifont=JetBrains\ Mono:h10
        set guifont=Inconsolata:h9
        set guifontwide=NSimSun
        set linespace=0
	elseif g:ismac
		set guifont=Inconsolata-Regular:h12
	endif
endif	

set number
" Tab
set tabstop=4
set shiftwidth=4
set expandtab

