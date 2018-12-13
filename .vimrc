
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
""if has("autocmd")
""
""  " Put these in an autocmd group, so that we can delete them easily.
""  augroup vimrcEx
""  au!
""
""  " For all text files set 'textwidth' to 78 characters.
""
""  augroup END
""
""else
""
""  set autoindent		" always set autoindenting on
""
""endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

""au BufRead *.wiki iunmap '
""au BufRead *.wiki iunmap "

filetype off
execute pathogen#infect()
execute pathogen#helptags()
set nocompatible
filetype plugin on
syntax on 
set textwidth=78
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors
set number
set cursorline
set noshowmode
set laststatus=2
set background=dark
let g:solarized_termtrans=1
colorscheme solarized8
nnoremap k gk
nnoremap j gj
inoremap jw <Esc>
inoremap wj <Esc>
imap <F5> <Esc>:w<CR>:!clear;python %<CR>
nmap <F5> :w<CR>:!clear;python %<CR>
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap "      ""<Left>
inoremap ""     "
inoremap '      ''<Left>
inoremap ''     '
inoremap (      ()<Left>
inoremap ((     (
inoremap [      []<Left>
inoremap [[      [
imap <Tab>      <C-Space>
inoremap <C-e> <C-o>A
inoremap <S-Tab> <C-o>f)<C-o>a

map <C-n> :NERDTreeToggle<CR>
