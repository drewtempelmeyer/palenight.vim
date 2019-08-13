scriptencoding utf-8

let g:airline#themes#palenight#palette = {}

let s:colors = palenight#GetColors()

function! s:wrap_opts(opts)
  if g:palenight_terminal_italics == 0
    let i = index(a:opts, 'italic')
    if i >= 0
      unlet a:opts[i]
    endif
  endif

  return join(a:opts, ",")
endfunction

let s:airline_modified = [s:colors.green.gui, '', s:colors.green.cterm, '', s:wrap_opts(['italic'])]
let s:airline_warning = [s:colors.red.gui, s:colors.black.gui, s:colors.red.cterm, s:colors.black.cterm]
let s:airline_error = [s:colors.black.gui, s:colors.red.gui, s:colors.black.cterm, s:colors.red.cterm, s:wrap_opts(['bold'])]

" ---
" Normal

let s:airline_a_normal = [s:colors.black.gui, s:colors.blue_purple.gui, s:colors.black.cterm, s:colors.blue_purple.cterm]
let s:airline_b_normal = [s:colors.white.gui, s:colors.white_mask_3.gui, s:colors.white.cterm, s:colors.white_mask_3.cterm]
let s:airline_c_normal = [s:colors.white.gui, s:colors.white_mask_1.gui, s:colors.white.cterm, s:colors.white_mask_1.cterm, s:wrap_opts(['italic'])]
let g:airline#themes#palenight#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

let g:airline#themes#palenight#palette.normal_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#palenight#palette.normal.airline_warning = s:airline_warning
let g:airline#themes#palenight#palette.normal_modified.airline_warning = s:airline_warning
let g:airline#themes#palenight#palette.normal.airline_error = s:airline_error
let g:airline#themes#palenight#palette.normal_modified.airline_error = s:airline_error

" ---
" Insert

let s:airline_a_insert = [s:colors.black.gui, s:colors.green.gui, s:colors.black.cterm, s:colors.green.cterm]
let s:airline_b_insert = s:airline_b_normal
let s:airline_c_insert = s:airline_c_normal
let g:airline#themes#palenight#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)

let g:airline#themes#palenight#palette.insert_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#palenight#palette.insert.airline_warning = g:airline#themes#palenight#palette.normal.airline_warning
let g:airline#themes#palenight#palette.insert_modified.airline_warning = g:airline#themes#palenight#palette.normal_modified.airline_warning
let g:airline#themes#palenight#palette.insert.airline_error = g:airline#themes#palenight#palette.normal.airline_error
let g:airline#themes#palenight#palette.insert_modified.airline_error = g:airline#themes#palenight#palette.normal_modified.airline_error

" ---
" Replace

let s:airline_a_replace = [s:colors.black.gui, s:colors.light_red.gui, s:colors.black.cterm, s:colors.light_red.cterm]
let s:airline_b_replace = s:airline_b_normal
let s:airline_c_replace = s:airline_c_normal
let g:airline#themes#palenight#palette.replace = airline#themes#generate_color_map(s:airline_a_replace, s:airline_b_replace, s:airline_c_replace)

let g:airline#themes#palenight#palette.replace_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#palenight#palette.replace.airline_warning = g:airline#themes#palenight#palette.normal.airline_warning
let g:airline#themes#palenight#palette.replace_modified.airline_warning = g:airline#themes#palenight#palette.normal_modified.airline_warning
let g:airline#themes#palenight#palette.replace.airline_error = g:airline#themes#palenight#palette.normal.airline_error
let g:airline#themes#palenight#palette.replace_modified.airline_error = g:airline#themes#palenight#palette.normal_modified.airline_error

" ---
" Visual

let s:airline_a_visual = [s:colors.black.gui, s:colors.yellow.gui, s:colors.black.cterm, s:colors.yellow.cterm]
let s:airline_b_visual = s:airline_b_normal
let s:airline_c_visual = s:airline_c_normal
let g:airline#themes#palenight#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)

let g:airline#themes#palenight#palette.visual_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#palenight#palette.visual.airline_warning = g:airline#themes#palenight#palette.normal.airline_warning
let g:airline#themes#palenight#palette.visual_modified.airline_warning = g:airline#themes#palenight#palette.normal_modified.airline_warning
let g:airline#themes#palenight#palette.visual.airline_error = g:airline#themes#palenight#palette.normal.airline_error
let g:airline#themes#palenight#palette.visual_modified.airline_error = g:airline#themes#palenight#palette.normal_modified.airline_error

" ---
" Inactive

let s:airline_inactive = [ s:colors.comment_grey.gui, s:colors.white_mask_1.gui, s:colors.comment_grey.cterm, s:colors.white_mask_1.cterm ]
let g:airline#themes#palenight#palette.inactive = airline#themes#generate_color_map(s:airline_inactive, s:airline_inactive, s:airline_inactive)

let g:airline#themes#palenight#palette.inactive_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

" ---
" Command line

let s:airline_a_commandline = [s:colors.black.gui, s:colors.white.gui, s:colors.black.cterm, s:colors.white.cterm]
let s:airline_b_commandline = s:airline_b_normal
let s:airline_c_commandline = s:airline_c_normal
let g:airline#themes#palenight#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

let g:airline#themes#palenight#palette.commandline.airline_warning = g:airline#themes#palenight#palette.normal.airline_warning
let g:airline#themes#palenight#palette.commandline.airline_error = g:airline#themes#palenight#palette.normal.airline_error

" ---

let g:airline#themes#palenight#palette.accents = {
      \ 'red': [s:colors.red.gui, '', s:colors.red.cterm, '']
      \ }

" ---
" Tabline

let s:airline_tabsel = [s:colors.black.gui, s:colors.white_mask_11.gui, s:colors.black.cterm, s:colors.white_mask_11.cterm, s:wrap_opts(['bold'])]
let s:airline_tabfill = [s:colors.white.gui, s:colors.black.gui, s:colors.white.cterm, s:colors.black.cterm]
let g:airline#themes#palenight#palette.tabline = {
      \ 'airline_tabsel':  s:airline_tabsel,
      \ 'airline_tabfill':  s:airline_tabfill,
      \ 'airline_tabmod': [s:colors.black.gui, s:colors.green.gui, s:colors.black.cterm, s:colors.green.cterm, s:wrap_opts(['bold', 'italic'])],
      \ 'airline_tabhid': [s:colors.white.gui, s:colors.white_mask_1.gui, s:colors.white.cterm, s:colors.white_mask_1.cterm]
      \ }
