" Custom color scheme by Simas Šakenis, 2022.
" Inspired by One Half Light (https://github.com/sonph/onehalf).

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "flomikai"

let s:black = { "gui": "#3a3a3a", "cterm": "237" }
let s:white = { "gui": "#ffffff", "cterm": "231" }
let s:darkgray = { "gui": "#9e9e9e", "cterm": "247" }
let s:gray = { "gui": "#d0d0d0", "cterm": "252" }
let s:lightgray = { "gui": "#eeeeee", "cterm": "255" }
let s:red = { "gui": "#d70000", "cterm": "160" }
let s:green = { "gui": "#00af5f", "cterm": "35" }
let s:blue = { "gui": "#0087ff", "cterm": "33" }
let s:darkblue = { "gui": "#000087", "cterm": "18" }
let s:yellow = { "gui": "#d78700", "cterm": "172" }

function! s:h(group, fg, bg)
  if type(a:fg) == type({})
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if type(a:bg) == type({})
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  exec "hi " . a:group . " gui=NONE cterm=NONE"
endfunction

" General
call s:h("Normal", s:black, s:white) " normal text
call s:h("NonText", s:black, "") " characters like ~ after end of file
call s:h("CursorLine", "", s:lightgray) " line of the cursor
call s:h("LineNr", s:gray, s:white) " line number
call s:h("CursorLineNr", s:black, "") " cursor line number
call s:h("IncSearch", s:white, s:green) " selected search match in file
call s:h("Search", s:white, s:green) " all other search matches in file
call s:h("TabLine", s:darkgray, s:lightgray) " inactive tab page label
call s:h("TabLineFill", s:darkgray, s:lightgray) " where there are no labels
call s:h("ColorColumn", "", s:lightgray) " characters at highlighted column
call s:h("SignColumn", s:black, "") " characters at sign column
call s:h("MatchParen", s:green, "") " matched parenthesis

" Syntax
call s:h("Comment", s:darkgray, "") " comments
call s:h("Constant", s:yellow, "") " constants (numbers, true/false)
call s:h("String", s:red, "") " strings
call s:h("Identifier", s:darkblue, "") " variable identifier names
call s:h("Function", s:green, "") " function names
call s:h("Statement", s:blue, "") " keywords like 'if' or 'while'
call s:h("Operator", s:black, "") " operators ('=', '<')
call s:h("PreProc", s:blue, "") " preprocessors ('import', '#include')
call s:h("Type", s:yellow, "") " types ('int', 'char')
call s:h("Special", s:green, "") " special symbols ('\n' in strings)
