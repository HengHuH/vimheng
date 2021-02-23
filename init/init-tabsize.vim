"===============================================================================
" init-tabsize.vim
"
" Create by Heng on 2021/02/23, clone from skywind300/vim-init
" Last Modified: 2021/02/23
"===============================================================================
" vim: set ts=4 sw=4 tw=78 et :

" 设置缩进宽度
set sw=4

" 设置 TAB 宽度
set ts=4

" 展开 tab
set et

" tab 展开为 4 space
set softtabstop=4

augroup PythonTab
	au!
	" 如果你需要 python 里用 tab，那么反注释下面这行字，否则vim会在打开py文件
	" 时自动设置成空格缩进。
	"au FileType python setlocal shiftwidth=4 tabstop=4 noexpandtab
augroup END
