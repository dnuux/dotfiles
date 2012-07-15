" Vim color file
" Maintainer:   milomouse <vincent[at]fea.st>
" Last Change:  2011-02-06
" Colorful yet muted-- Made for 256-color console.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="cottonmouse"

hi Normal         term=none cterm=none ctermfg=59   ctermbg=233
hi Boolean        term=none cterm=none ctermfg=9    ctermbg=none
hi Character      term=none cterm=none ctermfg=9    ctermbg=none
hi Comment        term=none cterm=none ctermfg=59   ctermbg=234
hi Conditional    term=none cterm=none ctermfg=110  ctermbg=none
hi Constant       term=none cterm=none ctermfg=13   ctermbg=none
hi Cursor         term=none cterm=none ctermfg=233  ctermbg=109
hi CursorLine     term=none cterm=none ctermfg=none ctermbg=234
hi CursorColumn   term=none cterm=none ctermfg=none ctermbg=8
hi Debug          term=none cterm=none ctermfg=181  ctermbg=none
hi Define         term=none cterm=none ctermfg=13   ctermbg=none
hi Delimiter      term=none cterm=none ctermfg=109  ctermbg=none
hi DiffAdd        term=none cterm=none ctermfg=66   ctermbg=237
hi DiffChange     term=none cterm=none              ctermbg=236
hi DiffDelete     term=none cterm=none ctermfg=236  ctermbg=238
hi DiffText       term=none cterm=none ctermfg=217  ctermbg=237
hi Directory      term=none cterm=none ctermfg=188  ctermbg=none
hi ErrorMsg       term=none cterm=none ctermfg=13   ctermbg=none
hi Error          term=none cterm=none ctermfg=13   ctermbg=234
hi Exception      term=none cterm=none ctermfg=249  ctermbg=none
hi Float          term=none cterm=none ctermfg=251  ctermbg=none
hi FoldColumn     term=none cterm=none ctermfg=97   ctermbg=238
hi Folded         term=none cterm=none ctermfg=238  ctermbg=234
hi Function       term=none cterm=none ctermfg=95   ctermbg=none
hi Identifier     term=none cterm=none ctermfg=110  ctermbg=none
hi IncSearch      term=none cterm=none ctermfg=131  ctermbg=none
hi Keyword        term=none cterm=none ctermfg=140  ctermbg=none
hi Label          term=none cterm=none ctermfg=187  ctermbg=none
hi LineNr         term=none cterm=none ctermfg=235  ctermbg=233
hi Macro          term=none cterm=none ctermfg=13   ctermbg=none
hi ModeMsg        term=none cterm=none ctermfg=13   ctermbg=none
hi MoreMsg        term=none cterm=none ctermfg=15   ctermbg=none
hi NonText        term=none cterm=none ctermfg=238  ctermbg=234
hi Number         term=none cterm=none ctermfg=141  ctermbg=none
hi Operator       term=none cterm=none ctermfg=38   ctermbg=none
hi PreCondit      term=none cterm=none ctermfg=180  ctermbg=none
hi PreProc        term=none cterm=none ctermfg=243  ctermbg=none
hi Question       term=none cterm=none ctermfg=15   ctermbg=none
hi Repeat         term=none cterm=none ctermfg=131  ctermbg=none
hi Search         term=none cterm=none ctermfg=9    ctermbg=none
hi SpecialChar    term=none cterm=none ctermfg=181  ctermbg=none
hi SpecialComment term=none cterm=none ctermfg=108  ctermbg=none
hi Special        term=none cterm=none ctermfg=140  ctermbg=none
hi SpecialKey     term=none cterm=none ctermfg=151  ctermbg=none
hi Statement      term=none cterm=none ctermfg=103  ctermbg=none
hi StatusLine     term=none cterm=none ctermfg=234  ctermbg=59
hi StatusLineNC   term=none cterm=none ctermfg=103  ctermbg=234
hi StorageClass   term=none cterm=none ctermfg=249  ctermbg=none
hi String         term=none cterm=none ctermfg=7    ctermbg=none
hi Structure      term=none cterm=none ctermfg=229  ctermbg=none
hi Tag            term=none cterm=none ctermfg=10   ctermbg=none
hi Title          term=none cterm=none ctermfg=7    ctermbg=none
hi Todo           term=none cterm=none ctermfg=95   ctermbg=none
hi Typedef        term=none cterm=none ctermfg=253  ctermbg=none
hi Type           term=none cterm=none ctermfg=102  ctermbg=none
hi Underlined     term=none cterm=none ctermfg=188  ctermbg=none
hi VertSplit      term=none cterm=none ctermfg=236  ctermbg=59
hi VisualNOS      term=none cterm=none ctermfg=5    ctermbg=none
hi WarningMsg     term=none cterm=none ctermfg=15   ctermbg=none
hi WildMenu       term=none cterm=none ctermfg=194  ctermbg=none
