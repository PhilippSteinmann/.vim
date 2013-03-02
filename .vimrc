" Many are from http://statico.github.com/vim.html

" My beautiful color scheme
colorscheme xoria256
  
syntax enable

" Get out of insert mode really quickly
imap jk <Esc>

"Navigate wrapping lines easily
:nmap j gj
:nmap k gk

"For navigating buffers
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Nice tabbing
set expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Map ; to CtrlP, which is a plugin for fuzzy text search
nmap ; :CtrlPBuffer<CR>

" No idea what all of these do, see :help ctrlp-options
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" http://stackoverflow.com/questions/14114738/powerline-can-be-shown-in-multiple-buffer-but-not-in-a-single-buffer
set laststatus=2

" Suggested in :help Powerline
set encoding=utf-8

set number
set ruler

" The incsearch option highlights as you type an expression (a.k.a. “Emacs style”), and ignorecase plus smartcase make searches case-insensitive except when you include upper-case characters (so /foo matches FOO and fOo, but /FOO only matches the former). hlsearch is a useful option which highlights the current search, but the highlight can become annoying so it makes sense to have a key to clear the highlight when you no longer need it:
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

" Toggle NERDTree visibility
:nmap \e :NERDTreeToggle<CR>

" I <3 pathogen
call pathogen#infect()
call pathogen#helptags()
