call plug#begin('~/.local/share/nvim/plugged')
Plug 'dracula/vim' " color-scheme

Plug 'neovimhaskell/haskell-vim'
Plug 'rust-lang/rust.vim'
Plug 'purescript-contrib/purescript-vim'
Plug 'pangloss/vim-javascript'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'] } " vim-prettier
call plug#end()

set smartindent
set clipboard=unnamed " use os clipboard
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set number " show line numbers
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches

syntax on
color dracula

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.css,*.scss,*.less Prettier
