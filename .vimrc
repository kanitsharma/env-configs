" Setting up vim-plug as the package manager {{{
if !filereadable(expand("~/.vim/autoload/plug.vim"))
    echo "Installing vim-plug and plugins. Restart vim after finishing the process."
    silent call mkdir(expand("~/.vim/autoload", 1), 'p')
    execute "!curl -fLo ".expand("~/.vim/autoload/plug.vim", 1)." https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

let g:indent_guides_enable_on_vim_startup = 1
let g:indentLine_enabled = 1
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_leadingSpaceChar = ''

autocmd Filetype javascript setlocal tabstop=2
autocmd Filetype css setlocal tabstop=2

:set number
:set tabstop=2
:set shiftwidth=2
:set expandtab

nnoremap <C-p> :FZF<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
