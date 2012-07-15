set background=dark "or light
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "vivify"
set t_Co=256
highlight Boolean             guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
highlight CTagsClass          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalConstant guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalVariable guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsImport         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsMember         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Character           guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
highlight Comment             guifg=#7f7f7f ctermfg=8                             gui=none cterm=none
highlight Conditional         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Constant            guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
highlight Cursor              guifg=#000000 ctermfg=0   guibg=#aeaeae ctermbg=145 gui=none cterm=none
highlight CursorColumn        guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CursorLine          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Debug               guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
highlight Define              guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
highlight DefinedName         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Delimiter           guifg=#8f8f8f ctermfg=245                           gui=none cterm=none
highlight DiffAdd             guifg=#cccccc ctermfg=252 guibg=#613c46 ctermbg=168 gui=none cterm=none
highlight DiffChange          guifg=#cccccc ctermfg=252 guibg=#333333 ctermbg=236 gui=none cterm=none
highlight DiffDelete          guifg=#333333 ctermfg=236 guibg=#464646 ctermbg=238 gui=none cterm=none
highlight DiffText            guifg=#aca0a3 ctermfg=168                           gui=none cterm=none
highlight Directory           guifg=#ffffff ctermfg=15                            gui=none cterm=none
highlight EnumerationName     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationValue    guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Error               guifg=#000000 ctermfg=0   guibg=#00ffff ctermbg=14  gui=none cterm=none
highlight ErrorMsg            guifg=#000000 ctermfg=0   guibg=#00c0cf ctermbg=44  gui=none cterm=none
highlight Exception           guifg=#8fffff ctermfg=123                           gui=underline cterm=underline
highlight Float               guifg=#9c93b3 ctermfg=98                            gui=none cterm=none
highlight FoldColumn          guifg=#dca3a3 ctermfg=181 guibg=#464646 ctermbg=238 gui=none cterm=none
highlight Folded              guifg=#dca3a3 ctermfg=181 guibg=#333333 ctermbg=236 gui=none cterm=none
highlight Function            guifg=#ffff8f ctermfg=228                           gui=none cterm=none
highlight Identifier          guifg=#ffffff ctermfg=15                            gui=none cterm=none
highlight Ignore              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight IncSearch           guifg=#000000 ctermfg=0   guibg=#c15c66 ctermbg=168 gui=none cterm=none
highlight Include             guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
highlight Keyword             guifg=#ffffff ctermfg=15                            gui=none cterm=none
highlight Label               guifg=#8fffff ctermfg=123                           gui=underline cterm=underline
highlight LineNr              guifg=#7f7f7f ctermfg=8   guibg=#464646 ctermbg=238 gui=none cterm=none
highlight LocalVariable       guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Macro               guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
highlight MatchParen          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight ModeMsg             guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
highlight MoreMsg             guifg=#ffffff ctermfg=15                            gui=none cterm=none
highlight NonText             guifg=#1f1f1f ctermfg=234                           gui=none cterm=none
highlight Normal              guifg=#cccccc ctermfg=252 guibg=#3f3f3f ctermbg=237 gui=none cterm=none
highlight Number              guifg=#aca0a3 ctermfg=168                           gui=none cterm=none
highlight Operator            guifg=#ffffff ctermfg=15                            gui=none cterm=none
highlight PMenu               guifg=#333333 ctermfg=236 guibg=#cccccc ctermbg=252 gui=none cterm=none
highlight PMenuSbar           guifg=#333333 ctermfg=236 guibg=#464646 ctermbg=238 gui=none cterm=none
highlight PMenuSel            guifg=#333333 ctermfg=236 guibg=#f18c96 ctermbg=204 gui=none cterm=none
highlight PMenuThumb          guifg=#333333 ctermfg=236 guibg=#7f7f7f ctermbg=8   gui=none cterm=none
highlight PreCondit           guifg=#dfaf8f ctermfg=180                           gui=none cterm=none
highlight PreProc             guifg=#ffcfaf ctermfg=223                           gui=none cterm=none
highlight Question            guifg=#ffffff ctermfg=15                            gui=none cterm=none
highlight Repeat              guifg=#8fffff ctermfg=123                           gui=underline cterm=underline
highlight Search              guifg=#000000 ctermfg=0   guibg=#c15c66 ctermbg=168 gui=none cterm=none
highlight SignColumn          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Special             guifg=#7f7f7f ctermfg=8                             gui=none cterm=none
highlight SpecialChar         guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
highlight SpecialComment      guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
highlight SpecialKey          guifg=#7e7e7e ctermfg=8                             gui=none cterm=none
highlight SpellBad            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellCap            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellLocal          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellRare           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Statement           guifg=#8fffff ctermfg=123                           gui=none cterm=none
highlight StatusLine          guifg=#333333 ctermfg=236 guibg=#f18c96 ctermbg=204 gui=none cterm=none
highlight StatusLineNC        guifg=#333333 ctermfg=236 guibg=#cccccc ctermbg=252 gui=none cterm=none
highlight StorageClass        guifg=#ffffff ctermfg=15                            gui=none cterm=none
highlight String              guifg=#cc9393 ctermfg=174                           gui=none cterm=none
highlight Structure           guifg=#ffffff ctermfg=15                            gui=underline cterm=underline
highlight TabLine             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLineFill         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLineSel          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Tag                 guifg=#dca3a3 ctermfg=181                           gui=none cterm=none
highlight Title               guifg=#ffffff ctermfg=15  guibg=#333333 ctermbg=236 gui=none cterm=none
highlight Todo                guifg=#ffffff ctermfg=15  guibg=#000000 ctermbg=0   gui=none cterm=none
highlight Type                guifg=#ffffff ctermfg=15                            gui=none cterm=none
highlight Typedef             guifg=#ffffff ctermfg=15                            gui=underline cterm=underline
highlight Underlined          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Union               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VertSplit           guifg=#333333 ctermfg=236 guibg=#cccccc ctermbg=252 gui=none cterm=none
highlight Visual              guifg=#333333 ctermfg=236 guibg=#f18c96 ctermbg=204 gui=none cterm=none
highlight VisualNOS           guifg=#333333 ctermfg=236 guibg=#f18c96 ctermbg=204 gui=underline cterm=underline
highlight WarningMsg          guifg=#ffffff ctermfg=15  guibg=#333333 ctermbg=236 gui=none cterm=none
highlight WildMenu            guifg=#000000 ctermfg=0   guibg=#dca3a3 ctermbg=181 gui=none cterm=none
highlight pythonBuiltin       guifg=#cccccc ctermfg=252                           gui=none cterm=none
highlight JavaScriptStrings   guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight phpStringSingle     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight phpStringDouble     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight htmlString          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight htmlTagName         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
