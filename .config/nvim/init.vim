set shell=/bin/zsh
set shiftwidth=2
set tabstop=2
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
set noma
set modifiable
set number
set fileencodings=utf-8,cp932

syntax on

call plug#begin()
  Plug 'ntk148v/vim-horizon'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'sheerun/vim-polyglot'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'voldikss/vim-translator'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'previm/previm'
call plug#end()

"markdown

let g:vim_markdown_folding_disabled = 1
let g:previm_enable_realtime = 1
let g:previm_open_cmd = 'open -a Google\ Chrome'


" vim-horizon
" https://github.com/ntk148v/vim-horizon
" if you don't set this option, this color might not correct
set termguicolors

colorscheme horizon

let mapleader = " "

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" or this line
let g:lightline = {'colorscheme' : 'horizon'}

" vim-tanslator
" https://github.com/voldikss/vim-translator#installation

"翻訳元言語
let g:translator_source_lang = "en"
" 翻訳先言語
let g:translator_target_lang="ja"

""" Configuration example
" Echo translation in the cmdline
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV


" NERDTree
" https://github.com/preservim/nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" FuzzyFinder
"https://github.com/junegunn/fzf
" vim-fugitve
"https://github.com/tpope/vim-fugitive 
" vim-gitgutter
" https://github.com/airblade/vim-gitgutter
let g:gitgutter_highlight_lines = 1
" vim-comentary
"https://github.com/tpope/vim-commentary

" vim-polyglot
" https://github.com/sheerun/vim-polyglot
" coc-nvim
" https://github.com/neoclide/coc.nvim

tnoremap <C-[> <C-\><C-n>


