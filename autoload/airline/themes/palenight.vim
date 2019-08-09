" MIT License. Copyright (c) 2013-2019 Bailey Ling et al.
" vim: et ts=2 sts=2 sw=2 tw=80

scriptencoding utf-8

" Airline themes are generated based on the following concepts:
"   * The section of the status line, valid Airline statusline sections are:
"       * airline_a (left most section)
"       * airline_b (section just to the right of airline_a)
"       * airline_c (section just to the right of airline_b)
"       * airline_x (first section of the right most sections)
"       * airline_y (section just to the right of airline_x)
"       * airline_z (right most section)
"   * The mode of the buffer, as reported by the :mode() function.  Airline
"     converts the values reported by mode() to the following:
"       * normal
"       * insert
"       * replace
"       * visual
"       * inactive
"       The last one is actually no real mode as returned by mode(), but used by
"       airline to style inactive statuslines (e.g. windows, where the cursor
"       currently does not reside in).
"   * In addition to each section and mode specified above, airline themes
"     can also specify overrides.  Overrides can be provided for the following
"     scenarios:
"       * 'modified'
"       * 'paste'
"
" Airline themes are specified as a global viml dictionary using the above
" sections, modes and overrides as keys to the dictionary.  The name of the
" dictionary is significant and should be specified as:
"   * g:airline#themes#<theme_name>#palette
" where <theme_name> is substituted for the name of the theme.vim file where the
" theme definition resides.  Airline themes should reside somewhere on the
" 'runtimepath' where it will be loaded at vim startup, for example:
"   * autoload/airline/themes/theme_name.vim
"
" For this, the palenight.vim, theme, this is defined as
let g:airline#themes#palenight#palette = {}

" Keys in the dictionary are composed of the mode, and if specified the
" override.  For example:
"   * g:airline#themes#palenight#palette.normal
"       * the colors for a statusline while in normal mode
"   * g:airline#themes#palenight#palette.normal_modified
"       * the colors for a statusline while in normal mode when the buffer has
"         been modified
"   * g:airline#themes#palenight#palette.visual
"       * the colors for a statusline while in visual mode
"
" Values for each dictionary key is an array of color values that should be
" familiar for colorscheme designers:
"   * [guifg, guibg, ctermfg, ctermbg, opts]
" See "help attr-list" for valid values for the "opt" value.
"
" Each theme must provide an array of such values for each airline section of
" the statusline (airline_a through airline_z).  A convenience function,
" airline#themes#generate_color_map() exists to mirror airline_a/b/c to
" airline_x/y/z, respectively.

let s:colors = palenight#GetColors()

let s:airline_modified = [s:colors.green.gui , '' , s:colors.green.cterm , '']
let s:airline_warning = [s:colors.red.gui, s:colors.white_mask_1.gui, s:colors.white.cterm, s:colors.red.cterm, 'bold,italic']
let s:airline_error = [s:colors.black.gui, s:colors.red.gui, s:colors.white.cterm, s:colors.red.cterm, 'bold,italic']

let s:airline_a_normal = [s:colors.black.gui, s:colors.blue_purple.gui, s:colors.black.cterm, s:colors.blue_purple.cterm]
let s:airline_b_normal = [s:colors.white.gui, s:colors.white_mask_3.gui, s:colors.white.cterm, s:colors.white_mask_3.cterm]
let s:airline_c_normal = [s:colors.white.gui, s:colors.white_mask_1.gui, s:colors.white.cterm, s:colors.white_mask_1.cterm, 'italic']
let g:airline#themes#palenight#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#palenight#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#palenight#palette.normal_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

let g:airline#themes#palenight#palette.normal.airline_warning = s:airline_warning
let g:airline#themes#palenight#palette.normal_modified.airline_warning = s:airline_warning
let g:airline#themes#palenight#palette.normal.airline_error = s:airline_error
let g:airline#themes#palenight#palette.normal_modified.airline_error = s:airline_error

" ---

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

let s:airline_inactive = [ s:colors.comment_grey.gui, s:colors.white_mask_1.gui, s:colors.comment_grey.cterm, s:colors.white_mask_1.cterm ]
let g:airline#themes#palenight#palette.inactive = airline#themes#generate_color_map(s:airline_inactive, s:airline_inactive, s:airline_inactive)

let g:airline#themes#palenight#palette.inactive_modified = {
      \ 'airline_c': s:airline_modified,
      \ }

" ---

" For commandline mode, we use the colors from normal mode, except the mode
" indicator should be colored differently, e.g. blue on light green
let s:airline_a_commandline = [s:colors.black.gui, s:colors.white.gui, s:colors.black.cterm, s:colors.white.cterm]
let s:airline_b_commandline = s:airline_b_normal
let s:airline_c_commandline = s:airline_c_normal
let g:airline#themes#palenight#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

let g:airline#themes#palenight#palette.commandline.airline_warning = g:airline#themes#palenight#palette.normal.airline_warning
let g:airline#themes#palenight#palette.commandline.airline_error = g:airline#themes#palenight#palette.normal.airline_error

" ---

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#palenight#palette.accents = {
      \ 'red': [s:colors.red.gui, '' , s:colors.red.cterm , '']
      \ }

" ---

let s:airline_tabsel = [s:colors.black.gui, s:colors.white_mask_11.gui, s:colors.black.cterm, s:colors.white_mask_11.cterm, 'bold,italic']
let s:airline_tabfill = [s:colors.white.gui, s:colors.black.gui, s:colors.white.cterm, s:colors.black.cterm]
let g:airline#themes#palenight#palette.tabline = {
      \ 'airline_tabsel':  s:airline_tabsel,
      \ 'airline_tabfill':  s:airline_tabfill
      \ }
