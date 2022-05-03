" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" Always show tabs
set showtabline=2

" enable powerline fonts
let g:airline_powerline_fonts = 1

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" my neovim config file

" set leader key
let g:mapleader = "\<Space>"

syntax enable
set hidden
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
set cmdheight=2
set iskeyword+=-
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set expandtab
set smartindent
set autoindent
set laststatus=0
set number relativenumber
set cursorline
set cursorcolumn
set background=dark
set showtabline=2
set noshowmode
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set formatoptions-=cro
set clipboard=unnamedplus


au! BufWritePost $MYVIMRC source %


" auto-install vim-plug
if empty(glob('~/.config/neovimautoload/plugged'))
 " silent !curl -fLo ~/.config/neovimautoload/plug.vim --create-dirs
 "   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  silent !sh -c 'curl -fLo "/home/ken/.config/neovimautoload/plug.vim --create-dirs 
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/neovimautoload/plugged')
  " Dracula Theme
  Plug 'dracula/vim', { 'as': 'dracula' }
  " Airline and Themes
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " nerd tree aka file explorer
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = [
        \ 'coc-python',
        \ 'coc-java',
        \ 'coc-emmet',
        \ 'coc-css', 
        \ 'coc-html',
        \ 'coc-vetur',
        \ 'coc-json',
        \ 'coc-prettier',
        \ 'coc-tsserver',
        \ 'coc-tslint-plugin',
        \ 'coc-eslint',
        \ 'coc-lua',
        \ 'coc-snippets',
        \ 'coc-vimlsp',
        \ 'coc-highlight',
        \ 'coc-pairs',
        \ 'coc-vimtex',
        \ 'coc-marketplace']
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " better comment support
  Plug 'scrooloose/nerdcommenter'
  " ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  " start page
  Plug 'mhinz/vim-startify'
  " Vim Wiki
  Plug 'vimwiki/vimwiki'
  "   This is a selection of plugins to make prose writing easier. 
Plug 'dpelle/vim-LanguageTool' 
" Plug 'ron89/thesaurus_query.vim' 
Plug 'junegunn/goyo.vim' 
Plug 'junegunn/limelight.vim' 
Plug 'reedes/vim-pencil' 
Plug 'reedes/vim-wordy'
" A disturbance in the force: we are using some emacs functionality here, org-mode specifically 
Plug 'jceb/vim-orgmode'
"  This is for language-specific plugins 
Plug 'plasticboy/vim-markdown'
" Tests runner (Jest)
Plug 'janko-m/vim-test'
" Typescript syntax
Plug 'herringtondarkholme/yats.vim'
" Vue JS syntax highlighting
Plug 'posva/vim-vue'
" JSX syntax
Plug 'maxmellon/vim-jsx-pretty'
" Prettier - automatically format file according to rules/editorconfig
Plug 'prettier/vim-prettier'
" to work with HTML/XML tags, see https://www.vim.org/scripts/script.php?script_id=1397
Plug 'othree/xml.vim'
" html5
Plug 'othree/html5.vim'
" SCSS syntax
Plug 'cakebaker/scss-syntax.vim'
" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

" Linter for web development
" Plug 'dense-analysis/ale'

" Keyboard commands for commenting out lines gcgc
Plug 'tpope/vim-commentary'

" snippets Pluin
Plug 'honza/vim-snippets'

" Plugins for LaTeX
Plug 'lervag/vimtex'

Plug 'ludovicchabant/vim-gutentags'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround' 
Plug 'Chiel92/vim-autoformat'
Plug 'tiagofumo/vim-nerdtree-syntax-highligh t'

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" setup the linter for web development
" let g:ale_fixers = {
"  \ ‘html’: [‘prettier’],
"  \ ‘css’: [‘stylelint’],
"  \}let g:ale_linters = {
"  \ ‘html’: [‘htmlhint’],
"  \ ‘css’: [‘stylelint’],
"  \}
" let g:ale_linters_explicit = 1
" let g:ale_fix_on_save = 1

" Thesaurus
" nnoremap <Leader>cs :ThesaurusQueryReplaceCurrentWord<CR>
" vnoremap <Leader>cs y:ThesaurusQueryReplace <C-r>"<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" Always show tabs
set showtabline=2

" enable powerline fonts
let g:airline_powerline_fonts = 1

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Nerd tree control c to launch it
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" requires silversearcher-ag
" used to ignore gitignore files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
 
" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" auto run Prettier on save
command! -nargs=0 Prettier :CocComand prettier.formatFile

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

nmap <space>r :RnvimrToggle<CR>

" Starify the launch screen

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.i3/config' },
            \ { 'n': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'd': '~/.dotfiles'},
            \ { 'a': '~/.config/alacritty/alacritty.yml'},
            \ ]
let g:startify_session_autoload = 1
