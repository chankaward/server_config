syntax on
filetype plugin indent on

set ignorecase smartcase
set background=dark
set ruler
set langmenu=none
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set hidden
set number
set noswapfile
set list
set listchars=trail:-,tab:--
set smarttab
set expandtab
set laststatus=2
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set textwidth=0
set hidden
set shell=zsh
set wildmenu
set wildmode=list:longest,full
set splitright
set splitbelow
set incsearch
set visualbell                  " mute the sounds
set cursorline                  " Highlight current line
set hlsearch                    " Highlighting search matches
set showmatch

" Ctrl C + l to clean search result
noremap <silent> <c-l> :nohls<cr><c-l>

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

let base16colorspace=256

let mapleader=","
map <Leader>spe :set syntax=perl   ai et ts=4 sw=4 tw=0<CR>
map <Leader>spy :set syntax=python ai et ts=4 sw=4 tw=0<CR>
map <Leader>sr  :set syntax=ruby   ai et ts=2 sw=2 tw=0<CR>

" Line Return {{{

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" }}}

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L $
noremap F %
vnoremap L g_

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Easier linewise reselection of what you just pasted.
nnoremap <leader>V V`]

" Indent/dedent/autoindent what you just pasted.
nnoremap <lt>> V`]<
nnoremap ><lt> V`]>
nnoremap =- V`]=

