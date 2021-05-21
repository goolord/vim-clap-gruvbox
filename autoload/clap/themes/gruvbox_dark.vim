"#########################################
" Vim-Clap Theme
"#########################################
let s:save_cpo = &cpoptions
set cpoptions&vim
let s:palette = {}

let grey_dark = '#1d2021'
let grey_mid = '#282828'
let grey_light = '#3c3836'

let gruvbox_color_1 = grey_dark
let gruvbox_color_2 = grey_mid
let gruvbox_color_3 = grey_light
let gruvbox_color_4 = grey_mid
let gruvbox_color_5 = grey_light

" main bg
let s:palette.display = { 'ctermbg': '235', 'guibg': grey_mid }
" Let ClapInput, ClapSpinner and ClapSearchText use the same backgound.

" cmd line
let s:bg0 = { 'ctermbg': '60', 'guibg': grey_dark }
let s:palette.input = s:bg0
let s:palette.spinner = extend({ 'ctermfg': '11', 'guifg':'#ffe500', 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': '195', 'guifg': '#CADFF3', 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

" preview bg
let s:palette.preview = { 'ctermbg': '238', 'guibg': grey_dark }

" 
let s:palette.selected = { 'ctermfg': '81', 'guifg': '#5FD7d7', 'cterm': 'bold,underline', 'gui': 'bold,underline' }

let s:palette.current_selection = { 'ctermbg': '236', 'guibg': grey_light, 'cterm': 'bold', 'gui': 'bold' }
let s:palette.selected_sign = { 'ctermfg': '196', 'guifg': '#f2241f' }
let s:palette.current_selection_sign = s:palette.selected_sign
let g:clap#themes#gruvbox_dark#palette = s:palette
let &cpoptions = s:save_cpo
unlet s:save_cpo
