" make copy to system clipboard
set nocompatible
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

filetype plugin on
syntax on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'
Plugin 'github/copilot.vim'
Plugin 'OmniSharp/omnisharp-vim'

" Plugin 'nanotech/jellybeans.vim'
call vundle#end()            " required

let g:ctrlp_show_hidden = 1
filetype plugin indent on
" let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf ='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/.vim/bundle/YouCompleteMe/*','~/.vim/bundle/YouCompleteMe/third_party/ycmd/*']
" set omnifunc=syntaxcomplete#Complete
let g:ycm_confirm_extra_conf=1
set number

set clipboard=unnamed
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set clipboard=unnamed
  endif
endif
set backspace=2

" vim-go related config
let g:go_test_show_name = 1
let g:go_test_timeout= '10m'
let g:go_auto_type_info = 1
let g:go_fmt_autosave = 1
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>dg <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
let g:go_fmt_command = "goimports"
let g:go_test_show_name = 1
let g:go_snippet_engine = "neosnippet"
let g:go_bin_path = expand("~/sdk/go1.24.5/.gotools")
let g:syntastic_go_checkers = ['golangci-lint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
let g:go_metalinter_command = "golangci-lint"
let g:go_metalinter_enabled = ['vet', 'revive', 'errcheck']
let g:go_auto_type_info = 1
" syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_extra_types = 1
let g:ycm_use_clangd = 0
" necomplete related config
let g:neocomplete#enable_at_startup = 1

 let g:copilot_filetypes = {
                              \ 'yaml': v:true,
                              \ }

set list
set listchars=tab:▸\ ,eol:¬

" Enable using mouse in iterm
set mouse=a

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let g:nerdtree_open_on_console_startup=0
let NERDTreeShowHidden=1
