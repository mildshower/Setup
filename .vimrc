set nu                                  "to set numbers per line
set hlsearch                            "to turn on hilighted search
set incsearch                           "enable increamental search
set nocompatible                        
syntax on                               "enabling colourized recognization of tokens as per extension
filetype plugin indent on               "enabling auto indent
set tabstop=2                           "that sets tab length as 2 spaces
set expandtab                           "treating tabs as spaces
set softtabstop=2                       
set shiftwidth=2                        "tab for auto indentarion
set history=50                          "setting command history as 50
set backspace=indent,eol,start          "to make backspace work normally in this vim new version
set wrap                                "sets text wrapping on
set showcmd                             "it shows incompleted commands
set ls=2                                "set 2 status lines
set ruler                               "to show ruler that shows cursor position in status line
set foldmethod=indent                   "to be able to fold codes
set nofoldenable
set foldnestmax=10
set foldlevel=2
set cursorline                          "hightlight cursorline
set wildmenu                            "to turn on suggestion list filename


colorscheme molokai                     "sets my vim's colorscheme 



"My Mappings Starts Here 

let mapleader = ","                     "that chooses my map leader

"this helps me to go to end of line in insert mode
inoremap <c-e> <ESC>A

"helps t o go to the begining of a line in insert mode
inoremap <c-a> <ESC>I

"helps to delete a line in insert mode
inoremap <c-d> <ESC>ddi

"helps to copy a line in insert mode
inoremap <c-c> <ESC>yyi

"helps to paste in insert mode
inoremap <c-v> <ESC>pi

"helps to indent and write file in insert mode
inoremap <c-w> <ESC>:w<CR>i<right>

"helps to indent and weite file in Normal mode
nnoremap <leader>s :w<CR>

"helps to toggle highlight search
noremap <leader>hl :set hlsearch!<CR>

"helps to switch to another vim-pane and make it maximized
noremap <leader>wt <c-w>w<c-w>\|<esc><c-w>_

"helps to open file view in a short pane
noremap <leader>n :NERDTreeToggle<cr>

"to open clipboard
noremap <leader>y :YRShow<cr>

"to edit vimrc on the go
noremap <leader>ov :vsplit $MYVIMRC<cr><c-w>w

"to run vimrc on the go
noremap <leader>rv :source $MYVIMRC<cr>

"to fold or unfold code by spacebar
nnoremap <space> za



"Here my abbreviations starts

"That is for if block expansion
iabbrev iff if() {<cr><cr>}<up><up><right><right>

"that is for while block expansion
iabbrev whi while() {<cr><cr>}<up><up><right><right><right>

"that is for for loop expansion
iabbrev forr for(;;) {<cr><cr>}<up><up><right><right><right>

"that is for IfElse expansion
iabbrev ife if() {<cr><cr>} else {<cr><cr>}<up><up><up><up>


let g:syntastic_javascript_checkers = ["jshint"]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ["javascript"]
