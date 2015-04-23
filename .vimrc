" Configuration file for vim
"set tags=${BASE_SRC_PATH}/tags_boxer
set ts=2
set expandtab
set noswapfile
set number
set ruler     "See status line

" show matching parenthesis
"set sm

" set wordwrap 9 characters from the right
"set wm=9

"set csprg=/usr/bin/cscope
"set cst
"set csto=1
cs add cscope.out 
"set csverb
"set cspc=3

if &t_Co > 2 || has("gui_running")
  syntax on
 set hlsearch
endif

"Fold settings
"set foldmethod=indent
"set sw=3

set incsearch
set hlsearch
"set nowrap
set showcmd
set ai
set cindent
if !has("gui_running") 
 set t_Co=8
 set t_Sf=^[[3%p1%dm
 set t_Sb=^[[4%p1%dm
 set <C-Right>=[C
 set <C-Left>=[D
 
 set <F10>=[21~
 set <S-F10>=[34~
 set <F9>=[20~
 set <S-F9>=[33~
 set <A-`>=` 
endif

if &term == "screen-bce"
set <C-Right>=[C
set <C-Left>=[D
endif

set timeout timeoutlen=1000 ttimeoutlen=100
imap <C-Right> <Right><esc>wi
imap <C-Left> <esc>bi
nmap <C-Right> w
nmap <C-Left> b
vmap <C-Right> w
vmap <C-Left> b
map <S-Insert> <MiddleMouse>
"map! <S-Insert> <MiddleMouse>

syntax enable

highlight Statement term=bold ctermfg=3 gui=bold guifg=DarkCyan

"set operation mode as windows
"source /usr/share/vim/vim61/mswin.vim

"Set font
"set guifont=-hp-hp\ user-medium-r-normal-*-*-120-*-*-m-*-hp-roman8
set guifont=Courier\ New\ 10
"set guifont=-adobe-courier-medium-r-normal--12-120-75-75-m-70-*-*

"Get local help files
helptags ~/.vim/doc 


"set configs
set ignorecase
set tabstop=2
set et
set sw=2
set smarttab 
set autoindent 
set smartindent

"personalization for c.vim plugin
"let g:C_AuthorName      = 
"let g:C_AuthorRef       = 
"let g:C_Email           = 
"let g:C_Company         = 

"command -nargs=* Make make <args> | cwindow 6

"set F7 and shift F7 for scrolling error window

noremap <F5> :botright cwindow<CR>
noremap <C-F5> :cclose<CR>
noremap <F6> :cprevious <CR>
noremap <F7> :cnext <CR>
map <C-F9> :Make<CR>

map <F3> <C-w>w
map <F2> <C-w>W
imap <F3> <ESC><C-w>w
imap <F2> <ESC><C-w>W


"nnoremap <silent> <c-o> :Tlist<CR>
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Open = 0
let Tlist_Process_File_Always = 0
set updatetime=1500


map <c-s> :w <CR>

map <F12> <ESC>:WMToggle<CR>
map <C-F12> <ESC>:TlistToggle<CR>

:set ttymouse=xterm
set mouse=a

"set color scheme
colorscheme desert
set bg=dark

" *****************************************
" *PUT ALL Color related config after this*
" *****************************************

hi MBEChanged guibg=darkblue ctermbg=darkblue 

"let g:winManagerWindowLayout = 'FileExplorer|taglist.vim'

map <c-f> :FirstExplorerWindow<CR>

set t_fs="test"

set autowrite


"For status bar
hi statusline   term=NONE cterm=NONE ctermfg=black ctermbg=grey
hi statuslineNC term=NONE cterm=NONE ctermfg=grey  ctermbg=black

set laststatus=1
hi User1 guibg=red ctermbg=red 
"set statusline=%<%f\ %=\:\b%n%y%m[\ %r\ ]%w\ %l,%c%V\ %P
"set statusline=%<%f\ %=:b%n%y%m%1*%r%*%w\ %l,%c%V\ %P

"let g:status1 = '%<%f\ %=:b%n%y%m%1*%r%*%w\ %l,%c%V\ %P'
"let g:status2='%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)%=:b%n%y%m%1*%r%*%w\ %l,%c%V\ %P'
"set statusline=g:status2

"set statusline='%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)%=:b%n%y%m%1*%r%*%w\ %l,%c%V\ %P'
"set statusline='%<%f\ %=:b%n%y%m%1*%r%*%w\ %l,%c%V\ %P'

"for display function name in status line during search
"for that Copy ctags.vim to your plugin directory
let g:ctags_path= "~/.vim/plugin/ctags"
let g:ctags_statusline=1
"let g:ctags_title=0
let generate_tags=1




highlight SignColor ctermfg=white ctermbg=blue guifg=white guibg=RoyalBlue3

set cscopequickfix=s-,c-,d-,i-,t-,e-

set nopaste

let host=hostname()
  
:if host =~ 'vitualbox.*'
  colorscheme evening
   set <HOME>=[1~
   set <END>=[4~
:endif

"set autochdir

"taglist config
let Tlist_Inc_Winwidth = 0

"Fix for mouse click-drag while running under screen
if &term == "screen-bce"
    set ttymouse=xterm2
endif

" leave my cursor where it was
set nostartofline 

" Highlight current cursor line
hi CursorLine   cterm=NONE ctermbg=brown ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=brown ctermfg=white guibg=darkred guifg=white

" show matching brackets
set showmatch

" include '-' also while selecting a word
"set isk+=-

set bg=dark

"Fold method is delaying large file load to 30 secs or so
"set foldmethod=syntax
"set foldnestmax=1

"http://vim.wikia.com/wiki/Show_tags_in_a_separate_preview_window
"Open tag search ctrl-] in preview window
nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

"autocmd FileType c set omnifunc=ccomplete#Complete
set bs=2

"http://www.vim.org/scripts/script.php?script_id=2179
"" // The switch of the Source Explorer
"nmap <F8> :SrcExplToggle<CR>
"
"" // Set the height of Source Explorer window
"let g:SrcExpl_winHeight = 8
"
"" // Set 100 ms for refreshing the Source Explorer
"let g:SrcExpl_refreshTime = 100
"
"" // Set "Enter" key to jump into the exact definition context
"" let g:SrcExpl_jumpKey = "<ENTER>"
"
"" // Set "Space" key for back from the definition context
"let g:SrcExpl_gobackKey = "<SPACE>"
"
"" // In order to Avoid conflicts, the Source Explorer should know what plugins
"" // are using buffers. And you need add their bufname into the list below
"" // according to the command ":buffers!"
"let g:SrcExpl_pluginList = [
"        \ "__Tag_List__",
"        \ "_NERD_tree_",
"        \ "Source_Explorer"
"    \ ]
"
"" // Enable/Disable the local definition searching, and note that this is not
"" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
"" // It only searches for a match with the keyword according to command 'gd'
"let g:SrcExpl_searchLocalDef = 1
"
"" // Do not let the Source Explorer update the tags file when opening
"let g:SrcExpl_isUpdateTags = 0
"
"" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
"" //  create/update a tags file
"let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"
"" // Set "<F12>" key for updating the tags file artificially
"let g:SrcExpl_updateTagsKey = "<F12>" 

function Func()
    :!cat %|grep NextState|cut -d" " -f10,11,12,13,19->~/fsm_op
    :e ~/fsm_op
endfunction 6:53 PM 
command Fsm exec Func() 



set diffopt+=iwhite
set diffexpr=""
