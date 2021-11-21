" ===================================================================
" Personal Keymaps
" ===================================================================
" Assuming \ as the leader, \ev to edit $MYVIMRC and save and source \es
" for sourcing the $MYVIMRC
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>es :so $MYVIMRC<CR>

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zk O<Esc>     " Empty line before
nnoremap <silent> zj o<Esc>     " Empty line after

" shotcuts to manipulate tabs
nnoremap <silent> td :tabclose<CR>
nnoremap tm :tabmove<Space>
nnoremap tt :tabedit<Space>

" shotcuts to switching tabs
nnoremap <silent> th :bfirst<CR>
nnoremap <silent> tk :bnext<CR>
nnoremap <silent> tj :bprevious<CR>
nnoremap <silent> tl :blast<CR>

" Search mappings: These will make it so that going
" to the next one in a search will center on
" the line it's found in.
nnoremap <silent> N Nzz
nnoremap <silent> n nzz

" Buffer keymaps
nnoremap <leader>cf :bd<CR>
