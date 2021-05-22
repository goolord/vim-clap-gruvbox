"#########################################
" Vim-Clap Theme
"#########################################
let s:save_cpo = &cpoptions
set cpoptions&vim
let s:palette = {}

let grey_dark = '#1d2021'
let grey_mid = '#282828'
let grey_light = '#3c3836'

" main bg
let s:palette.display = { 'ctermbg': '235', 'guibg': grey_mid }
" Let ClapInput, ClapSpinner and ClapSearchText use the same backgound.

" cmd line
let s:bg0 = { 'ctermbg': '60', 'guibg': grey_dark }
let s:palette.input = extend({'guifg': '#ebdbb2'}, s:bg0)
let s:palette.spinner = extend({ 'ctermfg': '11', 'guifg':'#fabd2f', 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': '195', 'guifg': '#ebdbb2', 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

" preview bg
let s:palette.preview = { 'ctermbg': '238', 'guibg': grey_dark }

" 
let s:palette.selected = { 'ctermfg': '81', 'guifg': '#5FD7d7', 'cterm': 'bold,underline', 'gui': 'bold,underline' }

let s:palette.current_selection = { 'ctermbg': '236', 'guibg': grey_light, 'cterm': 'bold', 'gui': 'bold' }
let s:palette.selected_sign = { 'ctermfg': '196', 'guifg': '#f2241f' }
let s:palette.current_selection_sign = s:palette.selected_sign

let s:fuzzy = [
  \ [118 , '#B8BB26'] ,
  \ [82  , '#B5C12E'] ,
  \ [46  , '#B3C736'] ,
  \ [47  , '#B0CE3E'] ,
  \ [48  , '#ADD446'] ,
  \ [49  , '#ABDA4E'] ,
  \ [50  , '#A8E055'] ,
  \ [51  , '#A6E65D'] ,
  \ [87  , '#A3EC65'] ,
  \ [123 , '#A0F36D'] ,
  \ [159 , '#9EF975'] ,
  \ [195 , '#9BFF7D'] ,
  \ ]
let g:clap_fuzzy_match_hl_groups = s:fuzzy


let g:clap#themes#gruvbox_dark#palette = s:palette
let &cpoptions = s:save_cpo
unlet s:save_cpo
