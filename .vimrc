let mapleader=","

call plug#begin('~/.vim/plugged')

Plug 'MarcWeber/vim-addon-mw-utils'     " File Intepreter
Plug 'tomtom/tcomment_vim'              " easier commenting
Plug 'jiangmiao/auto-pairs'

" Necessaries
Plug 'tpope/vim-rails'                  " rails specific stuff
Plug 'tpope/vim-eunuch'
Plug 'vim-ruby/vim-ruby'                " Ruby
Plug 'elixir-editors/vim-elixir'
Plug 'pangloss/vim-javascript'          " JS Improve
Plug 'mxw/vim-jsx'                      " Jsx
Plug 'amadeus/vim-mjml'                 " Highlighting for mjml
Plug 'cakebaker/scss-syntax.vim'        " Highlighting scss
Plug 'jdonaldson/vaxe'                  " Haxe
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
Plug 'lilydjwg/colorizer'               " Colorcode highlight

" Unused
" Plug 'kchmck/vim-coffee-script'         " CoffeeScript
" Plug 'elixir-lang/vim-elixir'           " Elixir
" Plug 'elmcast/elm-vim'                  " Elm

Plug 'tpope/vim-endwise'                " Auto add end or closing brackets
Plug 'tpope/vim-surround'                " Auto add end or closing brackets
Plug 'airblade/vim-gitgutter'           " git diffing

" Navigation
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'              " project directory sidebar
Plug 'dyng/ctrlsf.vim'                  " Searcher vim
Plug '/usr/local/opt/fzf'               " Like Ag
Plug 'junegunn/fzf.vim'                 " Like Ag
Plug 'ervandew/supertab'                " Auto complete

" Themes
Plug 'flazz/vim-colorschemes'           " Vim theme changer
Plug 'KKPMW/sacredforest-vim'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme one
set background=dark
set termguicolors
" colorscheme onedark

" Powerline fonts
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14
let g:airline_theme='one'
" Use Ag instead of Ack for ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Settings
set noswapfile
filetype off
filetype plugin indent on

" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.git
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor"

" NerdTree
map <C-n> :NERDTreeToggle<CR>     " map nerdtree toggle to ctrl+n
let NERDTreeShowHidden=1          " Show hidden dot files
let NERDTreeHighlightCursorline=1 " highlight cursor line
let NERDTreeIgnore=['\.bundle', '\.git\', '\.DS_Store'] " Ignore files
let NERDTreeChDirMode=2

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

" tab:›\
" eol:¬
set listchars=tab:▸\ ,trail:•,extends:#,nbsp:.


" misc
set noswapfile
filetype off
filetype plugin indent on

" JSx highlight in .js
let g:jsx_ext_required = 0

" Mappings
imap jk <c-c>
imap kj <c-c>
imap m, <c-c>
imap ,m <c-c>

" Map Ctrl hjkl to move between tabs
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

nmap <leader><space> :nohlsearch<CR> " clear search highlighting with \+space
nmap <leader>] q:
nmap <leader>vs :vs<Enter>
nmap <leader>sp :sp<Enter>

" FZF
" nmap <c-P> :call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --cached'}))<Enter>
nmap <c-P> :FZF<Enter>

nnoremap <Leader>ct :!ctags --tag-relative --extra=+f -Rf tags --exclude=.git,pkg --languages=-javascript,sql<CR><CR>

" CtrlSF
let g:ctrlsf_confirm_save=0
nmap <C-F> <Plug>CtrlSFPrompt
vmap <C-F> <Plug>CtrlSFVwordExec
vmap <C-S-F> <Plug>CtrlSFVwordExec
" vmap <c-F> :CtrlSFVwordExec<CR>
" vmap <C-S-F> <Plug>CtrlSFVwordPath

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Alias files like .vue as .html etc
au BufNewFile,BufRead *.inky setlocal ft=html
au BufNewFile,BufRead *.config setlocal ft=yaml
