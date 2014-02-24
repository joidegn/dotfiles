set nocompatible

call pathogen#infect()
" use 256 color vim
set t_Co=256
syntax enable
set background=dark
"let g:solarized_termcolors=256
if has('gui_running')
        set background=light
    else
        set background=dark
endif
colorscheme solarized

if !exists("autocmd_colorscheme_loaded")
  let autocmd_colorscheme_loaded = 1
  autocmd ColorScheme * highlight TodoRed      ctermbg=darkgreen guibg=#002b37 ctermfg=LightRed     guifg=#E01B1B
  autocmd ColorScheme * highlight TodoOrange   ctermbg=darkgreen guibg=#002b37 ctermfg=LightMagenta guifg=#E0841B
  autocmd ColorScheme * highlight TodoYellow   ctermbg=darkgreen guibg=#002b37 ctermfg=LightYellow  guifg=#E0D91B
endif

if has("autocmd")
  if v:version > 701
    autocmd Syntax * call matchadd('TodoRed',  '\W\zs\(TODO1\)')
    autocmd Syntax * call matchadd('TodoOrange', '\W\zs\(TODO2\)')
    autocmd Syntax * call matchadd('ToDoYellow', '\W\zs\(TODO3\)')
  endif
endif

set cursorline
hi cursorline guibg=#333333 
hi CursorColumn guibg=#333333

" Opening and closing braces
imap <C-F> {<CR>}<C-O>O


" basic options:
set directory=/tmp
autocmd BufEnter * :syntax sync fromstart 
set history=700
set autoread
set magic
set showmatch
set encoding=utf8
set ttyfast  " increases smoothness of rendering
set showcmd
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set shell=/bin/bash
set dictionary=/usr/share/dict/words
set clipboard=unnamed

set wildmenu

" Line wrapping the way I like it
set showbreak=…
set wrap linebreak 

" -----
" Visual stuff
" -----

set mat=5
set incsearch   "incremental searching
set ignorecase  "I dont care about case usually

filetype plugin on
filetype indent on

" use a back background in my editors
set background=dark

" I like highlighted search results
set hlsearch

" Set standard setting for PEAR coding standards
set tabstop=4
set shiftwidth=4
  
set expandtab
set autoindent
set smartindent
 
" auto indentation using web-indent for javascript files
au Filetype javascript setl indentkeys=0{,0},:,0#,!^F,o,O,e


" Linewidth to endless
set textwidth=0
" Show line numbers by default
set number
set scrolljump=5    " Jump 5 lines when running out of the screen
set scrolloff=2   " Indicate jump out of the screen when 3 lines before end of the screen
" Repair wired terminal/vim settings
" set backspace=start,eol

" undo all highlights
nnoremap <silent> <C-l> :nohl<CR><C-l>

set complete-=k complete+=k


set ignorecase                

" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "0.1"}
nmap <leader>c <Plug>SlimeLineSend
nmap <leader>p <Plug>SlimeParagraphSend
nmap <leader>v <Plug>SlimeConfig

" vimclojure
let vimclojure#ParenRainbow  = 1

" numbers
nnoremap <F3> :NumbersToggle<CR>

" investigate
let g:investigate_command_for_julia = '/usr/bin/zeal --query ^s'
