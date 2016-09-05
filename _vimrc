set nocompatible          
filetype off             
"-----------------------------------------------------------------
"������� ��������� ����������� � ����������� ���������
set nobackup
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()           
filetype plugin indent on  

"������� ���������� ��������� � ������� ������
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

"� ������ ����������� �������� ���������� ������ ������:
if has('gui')
colorscheme darkblue 
if has('win32')
set guifont=Lucida_Console:h12:cRUSSIAN::
else
set guifont=Terminus\ 14
endif
endif

"��������� ����
set noeb vb t_vb=
au GUIEnter * set visualbell t_vb=

"����������� ������� ���
if has("gui")
    set guioptions-=r
    set guioptions-=l
    set guioptions-=t
    set guioptions-=b
    set guioptions-=R
    set guioptions-=L
    set guioptions-=T
    set guioptions-=B
    set guioptions-=m
endif

set lines=27
set columns=100

syntax on
set nowrap
set nu

"�������� ����������� ����� ������
"filetype on
filetype plugin on

"��������� ���������
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set autoindent

"���������� ����������� ����������
let mapleader = ","

"������ �������� ����������
nmap <C-n>        :NERDTreeToggle<CR>
nmap <C-s>        :w<CR>
nmap <Enter>      :!cmd<CR>
nmap <F12>        :NERDTree C:<CR>

imap <C-s>   <Esc>:w<CR>
