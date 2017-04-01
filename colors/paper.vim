" Theme: paper
" Author: Case Duckworth <cased123@gmail.com>
" License: MIT
" Source: http://github.com/duckwork/paper-vim
" based on PaperColor by NLKNguyen

hi clear
syntax reset
let g:colors_name = 'paper'

" COLORS
let s:NONE = { 'cterm': 'NONE' }
let s:Black = { 'cterm': 'Black' }
let s:DarkBlue = { 'cterm': 'DarkBlue' }
let s:DarkGreen = { 'cterm': 'DarkGreen' }
let s:DarkCyan = { 'cterm': 'DarkCyan' }
let s:DarkRed = { 'cterm': 'DarkRed' }
let s:DarkMagenta = { 'cterm': 'DarkMagenta' }
let s:Brown = { 'cterm': 'Brown' }
let s:LightGray = { 'cterm': 'LightGray' }
let s:DarkGray = { 'cterm': 'DarkGray' }
let s:Blue = { 'cterm': 'Blue' }
let s:Green = { 'cterm': 'Green' }
let s:Cyan = { 'cterm': 'Cyan' }
let s:Red = { 'cterm': 'Red' }
let s:Magenta = { 'cterm': 'Magenta' }
let s:Yellow = { 'cterm': 'Yellow' }
let s:White = { 'cterm': 'White' }
let s:LightBlue = { 'cterm': 'LightBlue' }
let s:LightGreen = { 'cterm': 'LightGreen' }
let s:LightCyan = { 'cterm': 'LightCyan' }
let s:LightRed = { 'cterm': 'LightRed' }
let s:LightMagenta = { 'cterm': 'LightMagenta' }
let s:LightYellow = { 'cterm': 'LightYellow' }
let s:Gray = { 'cterm': 'Gray' }

" Set guicolors with file generated from Xresources
" This is for my personal use; it's not very portable or whatever.
let s:XColors = glob("~/.config/colors/vim.current")
if !empty(s:XColors)
 source s:XColors
endif

let s:DarkYellow = s:Brown
let s:LightGrey = s:LightGray
let s:Grey = s:Gray
let s:DarkGrey = s:DarkGray

function! s:hi(group, fg, bg, attr)
 execute 'highlight' a:group 
 \ 'guifg=' . (empty(a:fg) 
 \ ? get(s:NONE, 'gui', s:NONE.cterm) 
 \ : get(a:fg, 'gui', a:fg.cterm))
 \ 'guibg=' . (empty(a:bg) 
 \ ? get(s:NONE, 'gui', s:NONE.cterm)
 \ : get(a:bg, 'gui', a:bg.cterm))
 \ 'ctermfg=' . (empty(a:fg) ? s:NONE.cterm : a:fg.cterm)
 \ 'ctermbg=' . (empty(a:bg) ? s:NONE.cterm : a:bg.cterm)
 \ 'gui=' . (empty(a:attr) ? 'NONE' : a:attr)
 \ 'cterm=' . (empty(a:attr) ? 'NONE' : a:attr)
endfunction

set background=light

call s:hi('Normal', {}, {}, '')
call s:hi('Cursor', s:Blue, {}, 'inverse')
call s:hi('ColorColumn', {}, {}, '')
call s:hi('Conceal', {}, {}, '')
call s:hi('CursorIM', {}, {}, '')
call s:hi('CursorColumn', {}, {}, '')
call s:hi('CursorLine', {}, {}, '')
call s:hi('Directory', {}, {}, 'underline,bold')
call s:hi('DiffAdd', s:Green, {}, '')
call s:hi('DiffChange', s:Blue, {}, '')
call s:hi('DiffDelete', s:Red, {}, '')
call s:hi('DiffText', s:DarkBlue, {}, '')
call s:hi('EndOfBuffer', s:Gray, {}, '')
call s:hi('TermCursor', s:DarkGray, {}, 'inverse')
call s:hi('TermCursorNC', s:LightGray, {}, 'inverse')
call s:hi('ErrorMsg', s:LightRed, s:Red, 'inverse')
call s:hi('VertSplit', s:Gray, {}, '')
call s:hi('Folded', s:Blue, s:LightRed, '')
call s:hi('FoldColumn', s:Gray, {}, '')
call s:hi('SignColumn', s:Gray, {}, '')
call s:hi('IncSearch', s:DarkYellow, {}, '')
call s:hi('LineNr', s:Gray, {}, '')
call s:hi('CursorLineNr', {}, {}, 'bold')
call s:hi('MatchParen', {}, {}, 'bold,inverse')
call s:hi('ModeMsg', s:DarkGray, {}, '')
call s:hi('MoreMsg', s:DarkGray, {}, '')
call s:hi('NonText', s:Gray, {}, '')
call s:hi('Pmenu', {}, {}, 'inverse')
call s:hi('PmenuSel', s:LightYellow, s:White, 'inverse')
call s:hi('PmenuSbar', {}, {}, 'inverse')
call s:hi('PmenuThumb', {}, s:Gray, '')
call s:hi('Question', s:DarkCyan, {}, '')
call s:hi('Search', s:LightYellow, s:White, 'inverse')
call s:hi('SpecialKey', s:Black, {}, '')
call s:hi('SpellBad', s:Red, {}, 'underline')
call s:hi('SpellCap', s:Red, {}, 'underline')
call s:hi('SpellLocal', s:Red, {}, 'underline')
call s:hi('SpellRare', s:Red, {}, 'underline')
call s:hi('StatusLine', {}, {}, 'inverse')
call s:hi('StatusLineNC', s:LightGray, s:DarkGray, '')
call s:hi('TabLine', s:LightGray, s:DarkGray, '')
call s:hi('TabLineFill', {}, s:LightGray, '')
call s:hi('TabLineSel', {}, {}, 'inverse')
call s:hi('Title', {}, {}, 'bold,italic,standout')
call s:hi('Visual', s:Cyan, {}, 'inverse')
call s:hi('WarningMsg', s:Red, {}, 'inverse')
call s:hi('WildMenu', {}, s:LightYellow, '')

" Syntax
call s:hi('Comment', s:Gray, {}, 'italic')

call s:hi('Constant', {}, {}, '')
call s:hi('String', {}, {}, '')
call s:hi('Character', {}, {}, '')
call s:hi('Number', {}, {}, '')
call s:hi('Boolean', {}, {}, '')
call s:hi('Float', {}, {}, '')

call s:hi('Identifier', {}, {}, 'italic')
call s:hi('Function', {}, {}, 'italic')

call s:hi('Statement', s:White, {}, '')
call s:hi('Conditional', s:White, {}, '')
call s:hi('Repeat', s:White, {}, '')
call s:hi('Label', s:White, {}, '')
call s:hi('Operator', s:White, {}, '')
call s:hi('Keyword', s:White, {}, '')
call s:hi('Exception', s:White, {}, '')

call s:hi('PreProc', s:Red, {}, '')
call s:hi('Include', s:Red, {}, '')
call s:hi('Define', s:Red, {}, '')
call s:hi('Macro', s:Red, {}, '')
call s:hi('PreCondit', s:Red, {}, '')

call s:hi('Type', s:White, {}, '')
call s:hi('StorageClass', s:White, {}, '')
call s:hi('Structure', s:White, {}, '')
call s:hi('Typedef', s:White, {}, '')

call s:hi('Special', {}, {}, '')
call s:hi('SpecialChar', {}, {}, '')
call s:hi('Tag', {}, {}, '')
call s:hi('Delimiter', {}, {}, '')
call s:hi('SpecialComment', {}, {}, '')
call s:hi('Debug', {}, {}, '')

call s:hi('Underlined', {}, {}, 'underline')
call s:hi('Error', s:Red, s:Yellow, '')
call s:hi('Todo', s:Magenta, {}, 'bold,underline')

" Language-specific
call s:hi('pythonInclude', {}, {}, 'bold')
call s:hi('pythonTripleQuotes', {}, s:LightRed, '')

call s:hi('beanTag', s:Gray, {}, 'bold')
call s:hi('beanMeta', s:Gray, {}, '')
call s:hi('beanAmount', s:Green, {}, 'bold')
call s:hi('beanCurrency', s:Green, {}, '')
call s:hi('beanKeyword', s:LightGray, {}, '')
call s:hi('beanDate', s:LightGray, {}, '')
call s:hi('beanStarHeaderFold', s:Brown, {}, 'underline,bold')

call s:hi('helpHyperTextJump', {}, {}, 'underline')
