" Use vim defaults
" This must be set first as it changes other options as a side effect
set nocompatible

" Initialize filetype off for vundle change afterwords
filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle """

" set the runtime path to include Vundle and initialize
set rtp+=${HOME}/.vim/bundle/Vundle.vim
call vundle#begin()

" Brief help
" :PluginList                   - lists configured plugins
" :PluginInstall                - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo             - searches for foo; append `!` to refresh local cache
" :PluginClean                  - confirms removal of unused plugins; append `!` to auto-approve removal
" :h vundle for more details or wiki for FAQ
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" from vim-scripts.org - highlight all bracket-types that are unmatched
Plugin 'Highlight-UnMatched-Brackets'
" from github repo - code completion
Plugin 'Valloric/YouCompleteMe'
" from github repo - rust syntax highlighting
Plugin 'wting/rust.vim'
" from github repo - rust code completion
" Plugin 'racer-rust/vim-racer'
" from github repo - syntax checking
Plugin 'scrooloose/syntastic'
" from github repo - buffer list
" WARNING: Opening second window on syntastic check using rust.vim
Plugin 'fholgado/minibufexpl.vim'
" from vim-scripts.org - compile and run code in quickfix window
" Plugin 'SingleCompile'
" from github - integrate vim with tmux
Plugin 'benmills/vimux'
" from github - surround.vim
" Plugin 'tpope/vim-surround'
" from github - python.vim
Plugin 'hdima/python-syntax'
" from github - for vim-markdown
Plugin 'godlygeek/tabular'
" from github - vim-markdown
Plugin 'plasticboy/vim-markdown'
" from github - json highlighting
Plugin 'elzr/vim-json'
" from github - use ranger in vim
Plugin 'Mizuchi/vim-ranger'
" from github - use jedi-vim for omni python autocomplete
" Plugin 'davidhalter/jedi-vim'
" from github - open docs in new window???
Plugin 'vim-scripts/pydoc.vim'
" from github - extra ansible highlighting
Plugin 'pearofducks/ansible-vim'
" from github - jinja2 highlighting
Plugin 'glench/vim-jinja2-syntax'


" All of your Plugins must be added before the following line
call vundle#end()
"

" To make man commands play nice
runtime! ftplugin/man.vim


"""""""""""""""""""""""""""""""""""""""""""""""""" Filetypes & Formatting """

" Have vim load indentation rules and plugins according to the detected filetype
filetype plugin indent on

" Make .md and .yml files be recognized
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.yml set filetype=yaml

" Autoindent
set autoindent
" Smart indent 
"set smartindent -> Deprecated in favor of cindent
set cindent
" Backspace
set backspace=indent,eol,start
" Smarttab
set smarttab

" Proper indentation spacing
set shiftwidth=4
set softtabstop=4
set tabstop=8
" Insert space characters whenever the tab key is pressed
set expandtab

" viminfo including remembered register size
set viminfo='20,<1000,s10,h

"""""""""""""""""""""""""""""""" Peripheral Display Settings """

" Powerline
"set laststatus=2
"set showtabline=2 
"let $PYTHONPATH='/usr/lib/python3.4/site-packages'

" Show partial command in status line
set showcmd

" Show numbers on the left hand side as an incremental measurment of
" the space away from the present position.
set number
set relativenumber
" Show the cursor position all the time
set ruler

" Have line number color match normal text
highlight LineNr ctermfg=white
highlight CursorLineNR ctermfg=white

" Set how much history to save
set history=100

" Show TAB, EOL
set list
set listchars=tab:>.,trail:.

" Implement a fold on the source text by indent
set foldmethod=indent

" Disable the beeping
set noerrorbells

" Disable arrow keys in Insert mode in exchange for quicker 'O'
set noesckeys

" Set the shape of the cursor
"if &term =~ "xterm\\|rxvt"
  if exists('$TMUX')
      " solid underscore
      let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
      " solid block
      let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
  else
      " solid underscore
      let &t_SI = "\<Esc>[4 q"
      " solid block
      let &t_EI = "\<Esc>[2 q"
      " 1 or 0 -> blinking block
      " 2 -> solid block
      " 3 -> blinking underscore
      " 4 -> solid underscore
      " Recent versions of xterm (282 or above) also support
      " 5 -> blinking vertical bar
      " 6 -> solid vertical bar
  endif
"endif

" Statusline settings
set laststatus=2
set statusline=%t "tail of the filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=\%{&ff}] "file format
set statusline+=%h "help file flag
set statusline+=%m "modified flag
set statusline+=%r "read only flag
set statusline+=\ %y "filetype
set statusline+=%= "left/right separator
set statusline+=%l/%L "cursorline/total line
set statusline+=\ %c "cursor column
set statusline+=\ %P "percent through file

" Show matching brackets
" set showmatch
" Disable MatchParent
let loaded_matchparen = 1

" Better navigating through omnicomplete option list see:
" http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone,preview


"""""""""""""""""""""""""""""""""""""""""""""""""""""" Keyboard Shortcuts """

" Change the functions of the ":" and ";" keys
map ; :
noremap ;; ;

" Remap leader key
let mapleader=','

function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        elseif a:action == 'l'
            return "\<C-y>"
        endif
    endif
    return a:action
endfunction
inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>
inoremap <silent><C-l> <C-R>=OmniPopup('l')<CR>

" Make window movement easier
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Set shortcuts for bracketing
imap <Leader>( ()<esc>i
imap <Leader>) #()<esc>i
imap <Leader>< <><esc>i
imap <Leader>> #<><esc>i
imap <Leader>[ []<esc>i
imap <Leader>] #[]<esc>i
imap <Leader>{ {}<esc>i
imap <Leader>} #{}<esc>i

" Manpage split
"nnoremap <silent>K:<C-U>exe "Man" v:count "<cword>"<CR>
nmap K :Man <cword><CR>

nnoremap <C-p> :bnext<CR>

"""""""""""""""""""""""""""""" Search and Highlight settings """

" Set search highlighting
set hlsearch

" Make hlsearch show stuff up on a nice medium dark bg
hi Search term=reverse ctermbg=darkgray ctermfg=white

" shortcut to clear highlighting of hlsearch
nnoremap <Leader>s :nohlsearch<CR>

" Enable syntax highlighting
syntax on
colo embers

" Background 
"   Dark
set background=dark
"   Transparency
hi Normal ctermbg=None

" Do case insensitive matching
set ignorecase
" Do smart case matching
set smartcase
" Incremental search
set incsearch

" set clipboard


"""""""""""""""""""""""""""""""""""""""""""" Plugin Settings """

""" YouCompleteMe

let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 0
let g:ycm_add_preview_to_completeopt = 1


""" Syntastic

" Statusline additions
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_python_exec = '/usr/bin/python3'
" Works when commented out - 'rust' & 'rust.vim' don't do anything, and 'rustc'
" opens a new window
"let g:syntastic_rust_checkers = ['rust.vim']
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntasic_loc_list_height = 5


""" SingleCompile
""" Used for rust fast compilation checking

nmap <Leader>c :SCCompile<CR>
nmap <Leader>r :SCCompileRun<CR>
" to view result in quickfix window
nmap <Leader>v :cope<CR>
" Shortcut to clear quickfix box
nnoremap <Leader>l :lclose<CR>


""" Python highlighter
let python_highlight_all = 1

function! TogglePythonSyntax()
    if exists("b:python_version_2")
        Python3Syntax
    else
        Python2Syntax
    endif
endfunction


""" Markdown

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
set conceallevel=2
let g:vim_markdown_fenced_languages = ['python', 'viml=vim', 'rust=rs', 'markdown=md', 'bash=sh']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_style_pythonic = 0


""" Json

let g:vim_json_syntax_conceal = 0

"nnoremap <Leader>p :call TogglePythonSyntax()<CR>


""" Jedi
"let g:jedi#usages_command="<leader>z"
"let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 0
"map <leader>b Oimport ipdb; ipdb.set_trace # BREAKPOINT<C-c>


""" Ansible

" Dim the instances of `name:` found
let g:ansible_name_highlight = 'd'

" Highlight the following additional keywords in playbooks:
"   register always_run changed_when failed_when no_log args vars delegate_to
"   ignore_errors
let g:ansible_extra_keywords_highlight = 1


""" Ranger

nnoremap <C-n> :tabe %:p:h<CR>
