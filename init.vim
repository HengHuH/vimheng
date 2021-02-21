syntax on

call plug#begin('~/.vim/plugged')

" set some global variable
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

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if g:iswindows
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif

" 解决 Window gvim 菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Set gui font
if g:isGUI
	if g:iswindows
		set guifont=JetBrains\ Mono
	elseif g:ismac
		set guifont=Inconsolata-Regular:h12
	endif
endif	

set number
set ts=4

" Plugins Install 
call plug#begin('~/vimfiles/plugged')
Plug 'flazz/vim-colorschemes'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'

Plug 'Yggdroot/LeaderF'   
Plug 'justinmk/vim-dirvish'
Plug 'vim-airline/vim-airline'
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

" Color Scheme
set background=dark
colorscheme solarized

set number
set ts=4


" LeaderF
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction!<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git', '.vscode']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

set tags=./.tags;,.tags

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
