call pathogen#infect()
call pathogen#helptags()

" colo lettuce
colo evening

let mapleader=','

map <C-J> <C-W>j<C-W>_ map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
nmap <Left> :bn<CR>
nmap <Right> :bp<CR>

map <C-e> :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

set tabstop=2
set shiftwidth=2
set noexpandtab

let g:ctrlp_working_path_mode = 2
nnoremap <silent> <D-t> :CtrlP<CR>
nnoremap <silent> <D-r> :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {'dir':  '\.git$\|\.hg$\|\.svn$', 'file': '\.exe$\|\.so$\|\.dll$' }

set background=dark         " Assume a dark background
filetype plugin indent on   " Automatically detect file types.
syntax on                   " syntax highlighting
set mouse=a                 " automatically enable mouse usage
scriptencoding utf-8
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

" set autowrite                  " automatically write a file when leaving a modified buffer
set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit=onemore         " allow for cursor beyond last character
" set spell                       " spell checking on
set hidden                      " allow buffer switching without saving

" Could use * rather than *.*, but I prefer to leave .files unsaved
au BufWinLeave *.* silent! mkview  "make vim save view (state) (folds, cursor, etc)
au BufWinEnter *.* silent! loadview "make vim load view (state) (folds, cursor, etc)

set tabpagemax=15               " only show 15 tabs
set showmode                    " display the current mode

set cursorline                  " highlight current line

if has('cmdline_info')
	set ruler                   " show the ruler
	set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
	set showcmd                 " show partial commands in status line and
	" selected characters/lines in visual mode
endif

if has('statusline')
	set laststatus=2

	" Broken down into easily includeable segments
	set statusline=%<%f\    " Filename
	set statusline+=%w%h%m%r " Options
	set statusline+=%{fugitive#statusline()} "  Git Hotness
	set statusline+=\ [%{&ff}/%Y]            " filetype
	set statusline+=\ [%{getcwd()}]          " current dir
	set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set backspace=indent,eol,start  " backspace for dummies
set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set foldenable                  " auto fold code
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/node_modules
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" ctrlp options
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\~$\|\.swp$\|\.exe$\|\.so$\|\.dll$',
  \ }
let g:ctrlp_reuse_window = 'netrw'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_prompt_mappings = {
	\ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
	\ }

set guifont=Andale\ Mono\ Regular\ 14
set nobackup
set nowritebackup
cd /home/enz/coding/
