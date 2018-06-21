let mapleader=","

call plug#begin('~/.vim/plugged')

Plug 'MarcWeber/vim-addon-mw-utils'     " File Intepreter
Plug 'tomtom/tcomment_vim'              " easier commenting
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-obsession'              " Session switch
Plug 'ervandew/supertab'

" Plug 'tpope/vim-surround'               " Surround parenthesis thingy
Plug 'flazz/vim-colorschemes'           " Vim theme changer
" Necessaries
Plug 'tpope/vim-rails'                  " rails specific stuff
Plug 'tpope/vim-eunuch'
Plug 'vim-ruby/vim-ruby'                " Ruby
Plug 'pangloss/vim-javascript'          " JS Improve
Plug 'mxw/vim-jsx'                      " Jsx
Plug 'amadeus/vim-mjml'                 " Highlighting for mjml
Plug 'cakebaker/scss-syntax.vim'        " Highlighting scss
Plug 'kchmck/vim-coffee-script'         " CoffeeScript
Plug 'elixir-lang/vim-elixir'           " Elixir
Plug 'elmcast/elm-vim'                  " Elm
Plug 'slim-template/vim-slim'           " slim syntax highlighting
Plug 'othree/html5.vim'                 " Html5
Plug 'hail2u/vim-css3-syntax'           " CSS3
Plug 'posva/vim-vue'                    " Vue
Plug 'alexlafroscia/postcss-syntax.vim' " PostCSS
Plug 'leafgarland/typescript-vim'       " Typescript highlighting
Plug 'joukevandermaas/vim-ember-hbs'    " Handlebars highlighting
Plug 'vim-scripts/LargeFile'            " Load large file no lag
Plug 'Yggdroot/indentLine'              " Indentation line
Plug 'mattn/emmet-vim'                  " Emmet
Plug 'tpope/vim-endwise'                " Auto add end or closing brackets
Plug 'airblade/vim-gitgutter'           " git diffing

" Navigation
Plug 'scrooloose/nerdtree'              " project directory sidebar
Plug 'mileszs/ack.vim'                  " Silver searcher Ag replacement
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Airline/Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme onedark

" Powerline fonts
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14

" Use Ag instead of Ack for ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Settings
set noswapfile
filetype off
filetype plugin indent on

" let g:ctrlp_custom_ignore =  '\v[\/](node_modules|target|git|dist)|(\.(swp|ico|git|svn))$'
" " set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.git
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor"

" NerdTree
map <C-n> :NERDTreeToggle<CR>     " map nerdtree toggle to ctrl+n
let NERDTreeShowHidden=1          " Show hidden dot files
let NERDTreeHighlightCursorline=1 " highlight cursor line
let NERDTreeIgnore=['\.bundle', '\.git\', '\.DS_Store'] " Ignore files

""""  Default Conf
" Allow mouse click in terminal
set mouse=a

" Indentations
let g:indentLine_char = '|'
let g:indent_guides_enable_on_vim_startup=1 "enable on startup
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent

" Syntax
syntax on

" Search
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " searches should not be case-sensitive
set smartcase       " searches with uppercase characters will be case-sensitive

" split panes
set splitbelow      " new split panes open below
set splitright      " new split panes open to the right

" display utilities
set number          " show line numbers
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace


" misc
set noswapfile
filetype off
filetype plugin indent on

" Scroll
set scroll=25

" JSx highlight in .js
let g:jsx_ext_required = 0

" Mappings
nnoremap \ :Ag 
imap jk <c-c>
imap kj <c-c>
" Navigate 4x faster when holding down Ctrl
nmap <c-j> 4j
nmap <c-k> 4k
nmap <c-h> 4h
nmap <c-l> 4l

" Map Ctrl hjkl to move between tabs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader><space> :nohlsearch<CR> " clear search highlighting with \+space
nnoremap <leader>m q:
nnoremap <leader>vs :vs
nnoremap <leader>sp :sp
" nnoremap <c-P> :FZF<cr>
nnoremap <c-P> :call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --cached'}))<Enter>


"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Alias files like .vue as .html etc
au BufNewFile,BufRead *.inky setlocal ft=html
au BufNewFile,BufRead *.vue setlocal ft=html
