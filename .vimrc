"==============================================================================================
"                                 GVim Default Config
"==============================================================================================
"WHY enable this part, ctrl-v does not work?
"
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
"set diffexpr=MyDiff()

"function MyDiff()
    "let opt = '-a --binary '
    "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    "let arg1 = v:fname_in
    "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    "let arg2 = v:fname_new
    "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    "let arg3 = v:fname_out
    "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    "let eq = ''
    "if $VIMRUNTIME =~ ' '
        "if &sh =~ '\<cmd'
            "let cmd = '""' . $VIMRUNTIME . '\diff"'
            "let eq = '"'
        "else
            "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        "endif
    "else
        "let cmd = $VIMRUNTIME . '\diff'
    "endif
    "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

"==============================================================================================
"                                 Language Config
"==============================================================================================
set langmenu=en_US
let $LANG='en_US'

"==============================================================================================
"                                 Pathogen Config
"==============================================================================================
execute pathogen#infect()
syntax on
filetype plugin indent on

"==============================================================================================
"                                 User Config
"==============================================================================================
let mapleader = ";" 	 "define <leader> as ,
set cc=100				 "set stop line = 100
set nobackup 			 "set no backup
set writebackup 		 "backup while saving
set number  			 "set line number
set smartindent 		 "smart indent
set tabstop=4 			 "set tab
set shiftwidth=4 		 "set auto indent when enter
set nohlsearch 			 "disable highlight search, enable is 'set hlsearch'
set incsearch 			 "Realtime match
set cursorline 			 "highlight current line
set laststatus=2 		 "set status bar info
set autoread 			 "set autoread when file is modified outside
set lines=52 columns=150 "set window size
set expandtab

" Delete Space at the end of each line
nmap cS :%s/\s\+$//g<CR>:noh<CR>

"Delete ^M at the end of each line
nmap cM :%s/\r$//g<CR>:noh<CR>

" Auto {} [] ()
imap {{  {}<ESC>i<CR><CR><ESC>ki<Space><Space><Space><Space>
imap [[ []<ESC>i<ESC>la
imap ((  ()<ESC>i<ESC>la

imap <ESC><ESC> <ESC>a<ESC>la

"==============================================================================================
"                                 Solarized-Vim Config
"==============================================================================================
set background=dark
colorscheme solarized

"==============================================================================================
"                                 Bufexplorer Config
"==============================================================================================
"'<Leader>be' (normal open)  or
"'<Leader>bs' (force horizontal split open)  or
"'<Leader>bv' (force vertical split open)
"==============================================================================================
"                                 NERDTree Config
"==============================================================================================
" Binding F2 to toggle NERDTree
map <F2> :NERDTreeToggle<CR>
" Auto open NERDTree when vim launch
"autocmd vimenter * NERDTree

"==============================================================================================
"                                 Mark--Karkat Config
"==============================================================================================
" Highlight different words, toggle :<Leader> m
" <Leader> / :jump to the next mark
" <Leader> ? :jump to the previous mark

"==============================================================================================
"                                 Nerdcommenter Config
"==============================================================================================
"comment code
"<Leader>ci comment with /*	*/ for each line
"<Leader>cm comment with /* */ for whole block

"==============================================================================================
"                                 TagList Config
"==============================================================================================
nmap <F3> :Tlist<CR>
let Tlist_Show_One_File=1 		"Only show tags of current files
let Tlist_Enable_Fold_Column=0  "Hide indent line
let Tlist_WinWidth=40 			"set width
let Tlist_Use_Right_Window=1 	"Put list right

"==============================================================================================
" 								 Indentline Config
"==============================================================================================
nmap <F4> :IndentLinesToggle<CR>

