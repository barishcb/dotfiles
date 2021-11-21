" ===================================================================
" Look and feel
" ===================================================================

" Important!!
if has('termguicolors')
  set termguicolors
endif

" Setting Dracula color scheme
colorscheme dracula

augroup DraculaOverrides
    autocmd!
    autocmd ColorScheme dracula highlight DraculaBoundary guibg=none
    autocmd ColorScheme dracula highlight DraculaDiffDelete ctermbg=none guibg=none
    autocmd ColorScheme dracula highlight DraculaComment cterm=italic gui=italic
    autocmd User PlugLoaded ++nested colorscheme dracula
augroup end
