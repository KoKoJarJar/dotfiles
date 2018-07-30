if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
call dein#begin(expand('~/.config/nvim'))
"call dein#add('arakashic/chromatica.nvim')
call dein#add('Shougo/dein.vim')
"call dein#add('Shougo/denite.nvim')
"call dein#add('Shougo/deoplete.nvim')
"call dein#add('Shougo/neosnippet.vim')
call dein#add('sbdchd/neoformat')
"call dein#add('w0rp/ale')
call dein#add('haya14busa/dein-command.vim')
"call dein#add('zchee/deoplete-clang')
call dein#add('chriskempson/base16-vim')
"call dein#add('Shougo/neosnippet-snippets')
"call dein#add('scrooloose/nerdtree')
"call dein#add('ryanoasis/vim-devicons')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
"call dein#add('airblade/vim-gitgutter')
"call dein#add('Xuyuanp/nerdtree-git-plugin')
"call dein#add('neoclide/vim-easygit')
"call dein#add('tpope/vim-fugitive')
"call dein#add('neoclide/denite-git')
if dein#check_install()
call dein#install()
  let pluginsExist=1
  endif
call dein#end()
set nocompatible
set termguicolors
syntax on
colorscheme base16-oceanicnext
let mapleader=','   "leader is comma
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader><space> :nohlsearch<CR>
let g:chromatica#enable_at_startup=1
let g:deoplete#enable_at_startup=1
let g:deoplete#sources#clang#libclang_path="/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header="/usr/lib/clang"
let g:deoplete#max_list=20
let g:airline_theme='base16_oceanicnext'
let g:airline#extensions#ale#enabled = 1
hi link Namespace Special
hi link Variable Normal
hi link Member Special
nnoremap <leader>e :call <SID>SynStack()<CR>
function! <SID>SynStack()
if !exists("*synstack")
return
endif
echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
set splitbelow
set completeopt+=noselect
set completeopt-=preview
inoremap <C-h> <nop>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <s-Tab> pumvisible() ? "\<C-p>" : "\<s-Tab>"
inoremap <expr> <C-h> deoplete#smart_close_popup()."\<C-n>"
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"imap <expr><TAB>
"\ pumvisible() ? "\<C-n>" :
"\ neosnippet#expandable_or_jumpable() ?
"\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"autocmd vimenter * NERDTree
set encoding=utf8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"set hidden
noremap <silent> <leader>f :Neoformat<CR>
set clipboard+=unnamedplus
set pastetoggle=<f6>
set nopaste
set cursorline      "highlights current line
set hlsearch        "highlight matches
set incsearch       "searches as characters are entered
set showmatch       "highlight matching parenthesis-like
set cursorline      "highlights current line
filetype on
set relativenumber
set numberwidth=1
set tabstop=2 shiftwidth=2 expandtab
set wildmenu
set wildmode=full
set laststatus=2
filetype plugin indent on
let g:ale_sign_error = '💣'
let g:ale_sign_warning = '⚠'
hi ALEErrorSign ctermfg=1 ctermbg=10 guifg=#EC5f67 guibg=#343D46
"let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 1
"let NERDTreeShowHidden=1
"let g:NERDTreeWinSize=45
"let g:NERDTreeAutoDeleteBuffer=1
"let NERDTreeMinimalUI = 1
"let g:NERDTreeHeader = 'hello'
"let g:NERDTreeDirArrowExpandable = ''
"  let g:NERDTreeDirArrowCollapsible = ''
"let NERDTreeDirArrows = 1
"  call denite#custom#option('_', {
"        \ 'prompt': '❯',
"        \ 'winheight': 10,
"        \ 'reversed': 1,
"        \ 'highlight_matched_char': 'Underlined',
"        \ 'highlight_mode_normal': 'CursorLine',
"        \ 'updatetime': 1,
"        \ 'auto_resize': 1,
"        \})
"call denite#custom#map('insert','<C-n>','<denite:move_to_next_line>','noremap')
"	call denite#custom#map('insert','<C-p>','<denite:move_to_previous_line>','noremap')
"let s:menus = {}
"call denite#custom#var('menu', 'menus', s:menus)
"let s:menus.git = {
"    \ 'description' : 'Fugitive interface',
"    \}
"  let s:menus.git.command_candidates = [
"    \[' git status', 'Gstatus'],
"    \[' git diff', 'Gvdiff'],
"    \[' git commit', 'Gcommit'],
"    \[' git stage/add', 'Gwrite'],
"    \[' git checkout', 'Gread'],
"    \[' git rm', 'Gremove'],
"    \[' git cd', 'Gcd'],
"    \[' git push', 'exe "Git! push " input("remote/branch: ")'],
"    \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
"    \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
"    \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
"    \[' git fetch', 'Gfetch'],
"    \[' git merge', 'Gmerge'],
"    \[' git browse', 'Gbrowse'],
"    \[' git head', 'Gedit HEAD^'],
"    \[' git parent', 'edit %:h'],
"    \[' git log commit buffers', 'Glog --'],
"    \[' git log current file', 'Glog -- %'],
"    \[' git log last n commits', 'exe "Glog -" input("num: ")'],
"    \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
"    \[' git log until date', 'exe "Glog --until=" input("day: ")'],
"    \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
"    \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
"    \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
"    \[' git mv', 'exe "Gmove " input("destination: ")'],
"    \[' git grep',  'exe "Ggrep " input("string: ")'],
"    \[' git prompt', 'exe "Git! " input("command: ")'],
"    \] " Append ' --' after log to get commit info commit buffers
