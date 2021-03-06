syntax on

set noerrorbells
set tabstop=4 softtabstop=4

set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'leafoftree/vim-vue-plugin'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:ycm-core/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox-material
let g:gruvbox_material_background = 'hard'
set background=dark

if executable ('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split= 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>
nnoremap <leader>ps :Rg <SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5 <CR>
nnoremap <silent> <Leader>- :vertical resize -5 <CR>

nnoremap <silent> <Leader>gd :YmcCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YmcCompleter FixIt<CR>

