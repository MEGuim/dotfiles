
execute pathogen#infect()
let mapleader = " "
syntax on
filetype plugin indent on


" CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection(e)': ['<2-LeftMouse>'],
    \ 'AcceptSelection(t)': ['<cr>'],
    \ }
let g:ctrlp_cmd = 'CtrlPCurWD'

" NERDTREE
let g:nerdtree_tabs_open_on_console_startup=1
function! IsNerdTreeEnabled()
    return exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
endfunction
nmap <F7> :NERDTreeTabsToggle<CR>
let NERDTreeDirArrowExpandable='+'
let NERDTreeDirArrowCollapsible='-'
let NERDTreeMinimalUI=0


" THEME
set background=dark
" colorscheme hybrid_reverse
colorscheme hybrid_material
set cursorline
set cursorcolumn

" INDENT GUIDES
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
set ts=4 sw=4 et

au BufReadPost *.volt.php set syntax=volt

" set relativenumber
" set number relativenumber

nnoremap H gT
nnoremap L gt

let base16colorspace=256

set so=1
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set ruler
" set statusline+=%F\ %l\:%c
set statusline=%<%{fugitive#statusline()}%P\ %l,%c\ %h%m%r%f%=%{strftime(\"%Y-%m-%d\ %l:%M:%S\")}
set statusline=%<%P\ %l,%c\ %h%m%r%f%=%{strftime(\"%Y-%m-%d\ %l:%M:%S\")}
hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=White

" habilitar insert(paste) por defeito
set paste
augroup scroll
    au!
    au  VimEnter * :silent !synclient VertEdgeScroll=0
    au  VimLeave * :silent !synclient VertEdgeScroll=1
augroup END

" vim-gitgutter
set updatetime=250


set mouse=a
set number

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

hi Normal guibg=NONE ctermbg=NONE
set incsearch
set hlsearch
set encoding=utf8
set laststatus=2
set clipboard=unnamedplus

