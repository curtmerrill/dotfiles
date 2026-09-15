" ~/.vim/colors/flexoki.vim
" Plain-Vim port of your Neovim flexoki.lua colorscheme.
" Treesitter (@...), LSP semantic-token, and gitsigns highlight groups from
" the original file are omitted: plain Vim has no treesitter/LSP/gitsigns,
" so those groups would never be used. Everything else is ported 1:1.

highlight clear
if exists('syntax_on')
  syntax reset
endif
set termguicolors
let g:colors_name = 'flexoki'

" ---------------------------------------------------------------------------
" Flexoki palette
" ---------------------------------------------------------------------------
let s:p = {}

" Base
let s:p.black    = '#100F0F'
let s:p.base950  = '#1C1B1A'
let s:p.base900  = '#282726'
let s:p.base850  = '#343331'
let s:p.base800  = '#403E3C'
let s:p.base700  = '#575653'
let s:p.base600  = '#6F6E69'
let s:p.base500  = '#878580'
let s:p.base400  = '#9F9D96'
let s:p.base300  = '#B7B5AC'
let s:p.base200  = '#CECDC3'
let s:p.base150  = '#DAD8CE'
let s:p.base100  = '#E6E4D9'
let s:p.base50   = '#F2F0E5'
let s:p.paper    = '#FFFCF0'

" Red
let s:p.red950 = '#261312' | let s:p.red900 = '#3E1715' | let s:p.red850 = '#551B18'
let s:p.red800 = '#6C201C' | let s:p.red700 = '#942822' | let s:p.red600 = '#AF3029'
let s:p.red500 = '#C03E35' | let s:p.red400 = '#D14D41' | let s:p.red300 = '#E8705F'
let s:p.red200 = '#F89A8A' | let s:p.red150 = '#FDB2A2' | let s:p.red100 = '#FFCABB'
let s:p.red50  = '#FFE1D5'

" Orange
let s:p.orange950 = '#27180E' | let s:p.orange900 = '#40200D' | let s:p.orange850 = '#59290D'
let s:p.orange800 = '#71320D' | let s:p.orange700 = '#9D4310' | let s:p.orange600 = '#BC5215'
let s:p.orange500 = '#CB6120' | let s:p.orange400 = '#DA702C' | let s:p.orange300 = '#EC8B49'
let s:p.orange200 = '#F9AE77' | let s:p.orange150 = '#FCC192' | let s:p.orange100 = '#FED3AF'
let s:p.orange50  = '#FFE7CE'

" Yellow
let s:p.yellow950 = '#241E08' | let s:p.yellow900 = '#3A2D04' | let s:p.yellow850 = '#503D02'
let s:p.yellow800 = '#664D01' | let s:p.yellow700 = '#8E6B01' | let s:p.yellow600 = '#AD8301'
let s:p.yellow500 = '#BE9207' | let s:p.yellow400 = '#D0A215' | let s:p.yellow300 = '#DFB431'
let s:p.yellow200 = '#ECCB60' | let s:p.yellow150 = '#F1D67E' | let s:p.yellow100 = '#F6E2A0'
let s:p.yellow50  = '#FAEEC6'

" Green
let s:p.green950 = '#1A1E0C' | let s:p.green900 = '#252D09' | let s:p.green850 = '#313D07'
let s:p.green800 = '#3D4C07' | let s:p.green700 = '#536907' | let s:p.green600 = '#66800B'
let s:p.green500 = '#768D21' | let s:p.green400 = '#879A39' | let s:p.green300 = '#A0AF54'
let s:p.green200 = '#BEC97E' | let s:p.green150 = '#CDD597' | let s:p.green100 = '#DDE2B2'
let s:p.green50  = '#EDEECF'

" Cyan
let s:p.cyan950 = '#101F1D' | let s:p.cyan900 = '#122F2C' | let s:p.cyan850 = '#143F3C'
let s:p.cyan800 = '#164F4A' | let s:p.cyan700 = '#1C6C66' | let s:p.cyan600 = '#24837B'
let s:p.cyan500 = '#2F968D' | let s:p.cyan400 = '#3AA99F' | let s:p.cyan300 = '#5ABDAC'
let s:p.cyan200 = '#87D3C3' | let s:p.cyan150 = '#A2DECE' | let s:p.cyan100 = '#BFE8D9'
let s:p.cyan50  = '#DDF1E4'

" Blue
let s:p.blue950 = '#101A24' | let s:p.blue900 = '#12253B' | let s:p.blue850 = '#133051'
let s:p.blue800 = '#163B66' | let s:p.blue700 = '#1A4F8C' | let s:p.blue600 = '#205EA6'
let s:p.blue500 = '#3171B2' | let s:p.blue400 = '#4385BE' | let s:p.blue300 = '#66A0C8'
let s:p.blue200 = '#92BFDB' | let s:p.blue150 = '#ABCFE2' | let s:p.blue100 = '#C6DDE8'
let s:p.blue50  = '#E1ECEB'

" Purple
let s:p.purple950 = '#1A1623' | let s:p.purple900 = '#261C39' | let s:p.purple850 = '#31234E'
let s:p.purple800 = '#3C2A62' | let s:p.purple700 = '#4F3685' | let s:p.purple600 = '#5E409D'
let s:p.purple500 = '#735EB5' | let s:p.purple400 = '#8B7EC8' | let s:p.purple300 = '#A699D0'
let s:p.purple200 = '#C4B9E0' | let s:p.purple150 = '#D3CAE6' | let s:p.purple100 = '#E2D9E9'
let s:p.purple50  = '#F0EAEC'

" Magenta
let s:p.magenta950 = '#24131D' | let s:p.magenta900 = '#39172B' | let s:p.magenta850 = '#4F1B39'
let s:p.magenta800 = '#641F46' | let s:p.magenta700 = '#87285E' | let s:p.magenta600 = '#A02F6F'
let s:p.magenta500 = '#B74583' | let s:p.magenta400 = '#CE5D97' | let s:p.magenta300 = '#E47DA8'
let s:p.magenta200 = '#F4A4C2' | let s:p.magenta150 = '#F9B9CF' | let s:p.magenta100 = '#FCCFDA'
let s:p.magenta50  = '#FEE4E5'

" ---------------------------------------------------------------------------
" Theme colors
" ---------------------------------------------------------------------------
let s:c = {}

if &background ==# 'dark'
  let s:c.bg = s:p.black    | let s:c.bg2 = s:p.base950
  let s:c.ui = s:p.base900  | let s:c.ui2 = s:p.base850  | let s:c.ui3 = s:p.base800
  let s:c.tx = s:p.base200  | let s:c.tx2 = s:p.base400  | let s:c.tx3 = s:p.base600
  let s:c.red = s:p.red400     | let s:c.red2 = s:p.red600     | let s:c.red3 = s:p.red800     | let s:c.red4 = s:p.red900
  let s:c.orange = s:p.orange400 | let s:c.orange2 = s:p.orange600 | let s:c.orange3 = s:p.orange800 | let s:c.orange4 = s:p.orange900
  let s:c.yellow = s:p.yellow400 | let s:c.yellow2 = s:p.yellow600 | let s:c.yellow3 = s:p.yellow800 | let s:c.yellow4 = s:p.yellow900
  let s:c.green = s:p.green400   | let s:c.green2 = s:p.green600   | let s:c.green3 = s:p.green800   | let s:c.green4 = s:p.green900
  let s:c.cyan = s:p.cyan400     | let s:c.cyan2 = s:p.cyan600     | let s:c.cyan3 = s:p.cyan800     | let s:c.cyan4 = s:p.cyan900
  let s:c.blue = s:p.blue400     | let s:c.blue2 = s:p.blue600     | let s:c.blue3 = s:p.blue800     | let s:c.blue4 = s:p.blue900
  let s:c.purple = s:p.purple400 | let s:c.purple2 = s:p.purple600 | let s:c.purple3 = s:p.purple800 | let s:c.purple4 = s:p.purple900
  let s:c.magenta = s:p.magenta400 | let s:c.magenta2 = s:p.magenta600 | let s:c.magenta3 = s:p.magenta800 | let s:c.magenta4 = s:p.magenta900
else
  let s:c.bg = s:p.paper    | let s:c.bg2 = s:p.base50
  let s:c.ui = s:p.base100  | let s:c.ui2 = s:p.base150  | let s:c.ui3 = s:p.base200
  let s:c.tx = s:p.base800  | let s:c.tx2 = s:p.base600  | let s:c.tx3 = s:p.base400
  let s:c.red = s:p.red600     | let s:c.red2 = s:p.red400     | let s:c.red3 = s:p.red200     | let s:c.red4 = s:p.red100
  let s:c.orange = s:p.orange600 | let s:c.orange2 = s:p.orange400 | let s:c.orange3 = s:p.orange200 | let s:c.orange4 = s:p.orange100
  let s:c.yellow = s:p.yellow600 | let s:c.yellow2 = s:p.yellow400 | let s:c.yellow3 = s:p.yellow200 | let s:c.yellow4 = s:p.yellow100
  let s:c.green = s:p.green600   | let s:c.green2 = s:p.green400   | let s:c.green3 = s:p.green200   | let s:c.green4 = s:p.green100
  let s:c.cyan = s:p.cyan600     | let s:c.cyan2 = s:p.cyan400     | let s:c.cyan3 = s:p.cyan200     | let s:c.cyan4 = s:p.cyan100
  let s:c.blue = s:p.blue600     | let s:c.blue2 = s:p.blue400     | let s:c.blue3 = s:p.blue200     | let s:c.blue4 = s:p.blue100
  let s:c.purple = s:p.purple600 | let s:c.purple2 = s:p.purple400 | let s:c.purple3 = s:p.purple200 | let s:c.purple4 = s:p.purple100
  let s:c.magenta = s:p.magenta600 | let s:c.magenta2 = s:p.magenta400 | let s:c.magenta3 = s:p.magenta200 | let s:c.magenta4 = s:p.magenta100
endif

" ---------------------------------------------------------------------------
" Highlight helper: s:hl('Group', {'fg': ..., 'bg': ..., 'sp': ..., 'attr': 'bold', 'link': 'Other'})
" ---------------------------------------------------------------------------
function! s:hl(name, opts) abort
  if has_key(a:opts, 'link')
    execute 'highlight! link' a:name a:opts.link
    return
  endif
  let l:cmd = 'highlight ' . a:name
  let l:cmd .= has_key(a:opts, 'fg') ? ' guifg=' . a:opts.fg : ' guifg=NONE'
  let l:cmd .= has_key(a:opts, 'bg') ? ' guibg=' . a:opts.bg : ' guibg=NONE'
  if has_key(a:opts, 'sp')
    let l:cmd .= ' guisp=' . a:opts.sp
  endif
  let l:cmd .= ' gui=' . get(a:opts, 'attr', 'NONE')
  let l:cmd .= ' cterm=' . get(a:opts, 'attr', 'NONE')
  execute l:cmd
endfunction

" Editor highlights (:help highlight-groups)
call s:hl('ColorColumn', {'bg': s:c.bg2})
call s:hl('Conceal', {'fg': s:c.tx3})
call s:hl('CurSearch', {'bg': s:c.orange3})
call s:hl('Cursor', {'fg': s:c.bg, 'bg': s:c.tx})
call s:hl('lCursor', {'link': 'Cursor'})
call s:hl('CursorIM', {'link': 'Cursor'})
call s:hl('CursorColumn', {'link': 'CursorLine'})
call s:hl('CursorLine', {'bg': s:c.bg2})
call s:hl('Directory', {'fg': s:c.blue})
call s:hl('DiffAdd', {'fg': s:c.green, 'bg': s:c.green4})
call s:hl('DiffChange', {'fg': s:c.yellow, 'bg': s:c.yellow4})
call s:hl('DiffDelete', {'fg': s:c.red, 'bg': s:c.red4})
call s:hl('DiffText', {'bg': s:c.yellow3})
call s:hl('EndOfBuffer', {'link': 'NonText'})
call s:hl('TermCursor', {'link': 'Cursor'})
call s:hl('ErrorMsg', {'fg': s:c.red})
call s:hl('WinSeparator', {'fg': s:c.ui})
call s:hl('Folded', {'fg': s:c.tx3, 'bg': s:c.bg2})
call s:hl('FoldColumn', {'link': 'SignColumn'})
call s:hl('SignColumn', {'fg': s:c.tx3})
call s:hl('IncSearch', {'link': 'CurSearch'})
call s:hl('Substitute', {'link': 'Search'})
call s:hl('LineNr', {'fg': s:c.tx3})
call s:hl('LineNrAbove', {'link': 'LineNr'})
call s:hl('LineNrBelow', {'link': 'LineNr'})
call s:hl('CursorLineNr', {'link': 'CursorLine'})
call s:hl('MatchParen', {'fg': s:c.tx2, 'attr': 'bold'})
call s:hl('ModeMsg', {'fg': s:c.tx2})
call s:hl('MsgArea', {})
call s:hl('MsgSeparator', {'link': 'StatusLine'})
call s:hl('MoreMsg', {'link': 'Normal'})
call s:hl('NonText', {'fg': s:c.tx3})
call s:hl('Normal', {'fg': s:c.tx, 'bg': s:c.bg})
call s:hl('NormalFloat', {'bg': s:c.bg2})
call s:hl('FloatBorder', {'link': 'NormalFloat'})
call s:hl('Pmenu', {'fg': s:c.tx2, 'bg': s:c.bg2})
call s:hl('PmenuSel', {'bg': s:c.blue4})
call s:hl('PmenuSbar', {'link': 'Pmenu'})
call s:hl('PmenuThumb', {'bg': s:c.tx3})
call s:hl('Question', {'fg': s:c.blue})
call s:hl('QuickFixLine', {'fg': s:c.cyan})
call s:hl('Search', {'bg': s:c.yellow3})
call s:hl('SpecialKey', {'fg': s:c.tx3})
call s:hl('SpellBad', {'sp': s:c.red, 'attr': 'undercurl'})
call s:hl('SpellCap', {'sp': s:c.yellow, 'attr': 'undercurl'})
call s:hl('SpellLocal', {'sp': s:c.cyan, 'attr': 'undercurl'})
call s:hl('SpellRare', {'sp': s:c.purple, 'attr': 'undercurl'})
call s:hl('StatusLine', {'bg': s:c.ui})
call s:hl('StatusLineNC', {'fg': s:c.tx3, 'bg': s:c.bg2})
call s:hl('TabLine', {'link': 'StatusLineNC'})
call s:hl('TabLineFill', {'link': 'TabLine'})
call s:hl('TabLineSel', {'attr': 'bold'})
call s:hl('Title', {'attr': 'bold'})
call s:hl('Visual', {'bg': s:c.blue4})
call s:hl('VisualNOS', {'link': 'Visual'})
call s:hl('WarningMsg', {'fg': s:c.orange})
call s:hl('Whitespace', {'link': 'NonText'})
call s:hl('WildMenu', {'link': 'PmenuSel'})
call s:hl('WinBar', {'link': 'StatusLine'})
call s:hl('WinBarNC', {'link': 'StatusLineNC'})

" Syntax highlights (:help group-name)
call s:hl('Comment', {'fg': s:c.tx3})
call s:hl('Constant', {'fg': s:c.yellow})
call s:hl('String', {'fg': s:c.green})
call s:hl('Character', {'fg': s:c.orange})
call s:hl('Number', {'fg': s:c.orange})
call s:hl('Boolean', {'fg': s:c.orange})
call s:hl('Float', {'link': 'Number'})

call s:hl('Identifier', {'fg': s:c.tx})
call s:hl('Function', {'fg': s:c.blue})

call s:hl('Keyword', {'fg': s:c.magenta})
call s:hl('Statement', {'link': 'Keyword'})
call s:hl('Conditional', {'link': 'Keyword'})
call s:hl('Repeat', {'link': 'Keyword'})
call s:hl('Label', {'link': 'Keyword'})
call s:hl('Operator', {'fg': s:c.tx})
call s:hl('Exception', {'link': 'Keyword'})

call s:hl('PreProc', {'fg': s:c.orange})
call s:hl('Include', {'fg': s:c.cyan})
call s:hl('Define', {'link': 'PreProc'})
call s:hl('Macro', {'fg': s:c.purple})
call s:hl('PreCondit', {'link': 'PreProc'})

call s:hl('Type', {'fg': s:c.cyan})
call s:hl('StorageClass', {'link': 'Type'})
call s:hl('Structure', {'link': 'Type'})
call s:hl('Typedef', {'link': 'Type'})

call s:hl('Special', {'fg': s:c.orange})
call s:hl('SpecialChar', {'link': 'Special'})
call s:hl('Tag', {'link': 'Special'})
call s:hl('Delimiter', {'link': 'Special'})
call s:hl('SpecialComment', {'link': 'Special'})
call s:hl('Debug', {'link': 'Special'})

call s:hl('Underlined', {'attr': 'underline'})
call s:hl('Ignore', {'fg': s:c.tx3})
call s:hl('Error', {'fg': s:c.red})
call s:hl('Todo', {'fg': s:c.cyan, 'attr': 'bold'})

call s:hl('Added', {'fg': s:c.green})
call s:hl('Changed', {'fg': s:c.yellow})
call s:hl('Removed', {'fg': s:c.red})

delfunction s:hl

