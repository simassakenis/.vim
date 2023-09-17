syntax enable " enable syntax highlighting
colorscheme flomikai " set colorscheme
set number " show line numbers
set cursorline " highlight cursor line
set linebreak " visually break line by word boundary
set breakindent " indent visually broken line
set hlsearch " highlight all search matches 
set incsearch " search while typing
set ruler " show line number, character index, and progress percentage
set showtabline=2 " always show tabline
set tabstop=4 " set the width of the tab in spaces
set shiftwidth=4 " set the size of an indent in spaces
set expandtab " convert inserted tab to spaces (for horizontal scrolling)
set autoindent " set automatic indentation
set backspace=eol,indent,start " backspace on ln brks, autoindnts, before insert

" type Control C to escape from insert mode
imap <C-c> <Esc>
" type Control C in normal mode to end search highlighting
nmap <C-c> :noh<return>
" go back to terminal by pressing Space
nnoremap <space> <C-z>
" initiate new tab opening by pressing t
nnoremap t :tabe<space>
" navigate left and right through tabs with (capital) J and K
nnoremap J gT
nnoremap K gt
" merge line below into the current line by pressing M (default is J)
nnoremap M J
" complete curly brackets after typing { Enter
inoremap {<CR> {<CR>}<C-o>O
" type ;e to insert an environment written at the current line
inoremap ;e <Esc>^v$hdi\begin{}<Esc>Po\end{}<Esc>PO
" type ;l in normal mode to add \left \right to () or []
nnoremap ;l i\left<Esc>l%i\right<Esc>l%
" move visually naturally when holging Control
nnoremap <C-h> h
nnoremap <C-j> gj
nnoremap <C-k> gk
nnoremap <C-l> l
" Type Control y to copy visual selection to system clipboard
vmap <C-y> "*y

" compile latex on write
autocmd BufWritePost *.tex silent! execute "!latexmk -xelatex -pdf % ; latexmk -c" | redraw!
" comment out visually selected block by pressing {{, uncomment by pressing }}
autocmd Filetype c,cc,cpp let b:comment_prefix = '// '
autocmd Filetype python let b:comment_prefix = '# '
autocmd Filetype tex let b:comment_prefix = '% '
vnoremap {{ <Esc>'<<C-v>'>I<C-r>=b:comment_prefix<Enter><Esc>
vnoremap }} <Esc>'<<C-v>'>wgeld

let g:tex_indent_items=0 " disable annoying itemize autoindentations in latex
let g:python_highlight_all = 1 " enhance python syntax highlighting
