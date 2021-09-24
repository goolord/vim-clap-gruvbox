"#########################################
" Vim-Clap Theme
"#########################################
let s:palette = {}

let grey_dark = '#1d2021'
let grey_mid = '#282828'
let grey_light = '#3c3836'

" main bg
let s:palette.display = { 'ctermbg': '235', 'guibg': grey_dark }
" Let ClapInput, ClapSpinner and ClapSearchText use the same backgound.

" cmd line
let s:bg0 = { 'ctermbg': '238', 'guibg': grey_mid }
let s:palette.input = extend({'guifg': '#ebdbb2'}, s:bg0)
let s:palette.spinner = extend({ 'ctermfg': '11', 'guifg':'#fabd2f', 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': '195', 'guifg': '#ebdbb2', 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

" preview bg
let s:palette.preview = { 'ctermbg': '238', 'guibg': grey_mid }

" 
let s:palette.selected = { 'ctermfg': '81', 'guifg': '#5FD7d7', 'cterm': 'bold,underline', 'gui': 'bold,underline' }

let s:palette.current_selection = { 'ctermbg': '236', 'guibg': grey_light, 'cterm': 'bold', 'gui': 'bold' }
let s:palette.selected_sign = { 'ctermfg': '196', 'guifg': '#f2241f' }
let s:palette.current_selection_sign = s:palette.selected_sign

let g:clap_fuzzy_match_hl_groups = [
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ [118 , '#fabd2f'] ,
  \ ]

let g:clap#themes#gruvbox_dark#palette = s:palette
