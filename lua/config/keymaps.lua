vim.keymap.set("n", "zc", "<cmd>call VSCodeNotify('editor.toggleFold')<cr>")
if vim.g.vscode then
  vim.keymap.set("n", "zc", "<cmd>call VSCodeNotify('editor.toggleFold')<cr>")
  vim.keymap.set("n", "zf", "<cmd>call VSCodeNotify('editor.foldAll')<cr>")
  vim.keymap.set("n", "zu", "<cmd>call VSCodeNotify('editor.unfoldAll')<cr>")
end

vim.api.nvim_set_keymap("n", "<Leader>\\", ":vsplit<CR>", { noremap = true, silent = true }) -- Keymaps are automatically loaded on the VeryLazy event
vim.api.nvim_set_keymap("n", "<C-_>", ":Telescope live_grep<CR>", { noremap = true }) -- Keymaps are automatically loaded on the VeryLazy event
--
--- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--nnoremap <M-s> <esc>:w<cr>                 " save files
-- inoremap <M-s> :w<cr>
-- nnoremap <M-w> <esc>:q<cr>               " close current file
-- inoremap <M-w> :q<cr>
-- nnoremap <M-q> <esc>:qa<cr>               " quit all
-- inoremap <M-q> :qa<cr>
--

-- nnoremap <silent> z1 <Cmd>call VSCodeNotify('editor.foldLevel1')<CR>
-- nnoremap <silent> z2 <Cmd>call VSCodeNotify('editor.foldLevel2')<CR>
-- nnoremap <silent> z3 <Cmd>call VSCodeNotify('editor.foldLevel3')<CR>
-- nnoremap <silent> z4 <Cmd>call VSCodeNotify('editor.foldLevel4')<CR>
-- nnoremap <silent> z5 <Cmd>call VSCodeNotify('editor.foldLevel5')<CR>
-- nnoremap <silent> z6 <Cmd>call VSCodeNotify('editor.foldLevel6')<CR>
-- nnoremap <silent> z7 <Cmd>call VSCodeNotify('editor.foldLevel7')<CR>
--
-- xnoremap <silent> zV <Cmd>call VSCodeNotify('editor.foldAllExcept')<CR>
-- " Improve incrementing/decrementing
-- function! AddSubtract(char, back)
--   let pattern = &nrformats =~ 'alpha' ? '[[:alpha:][:digit:]]' : '[[:digit:]]'
--   call search(pattern, 'cw' . a:back)
--   execute 'normal! ' . v:count1 . a:char
--   silent! call repeat#set(":\<C-u>call AddSubtract('" .a:char. "', '" .a:back. "')\<CR>")
-- endfunction
--
-- " Improve incrementing/decrementing
-- function! AddSubtract(char, back)
--   let pattern = &nrformats =~ 'alpha' ? '[[:alpha:][:digit:]]' : '[[:digit:]]'
--   call search(pattern, 'cw' . a:back)
--   execute 'normal! ' . v:count1 . a:char
--   silent! call repeat#set(":\<C-u>call AddSubtract('" .a:char. "', '" .a:back. "')\<CR>")
-- endfunction
--
-- " Improved add/subtract fn
-- noremap <silent> <Leader>-  :call AddSubtract("\<C-x>", '')<CR>
-- noremap <silent> <Leader>+ :call AddSubtract("\<C-a>", '')<CR>
-- noremap _ :call AddSubtract("\<C-a>", '')<CR>
-- noremap - <C-x>
-- noremap + <C-a>
-- " Rebind Ctrl keys: Select All, Copy, Cut, Save
--
-- noremap <C-a> ggVG
-- noremap <C-c> y
-- noremap <C-x> d
-- noremap <C-s> :w<CR>
-- --
-- --
-- vim.keymap.set("n", "z", "<cmd>Find<cr>")
--
--

--
--
-- xmap gc  <Plug>VSCodeCommentary
-- nmap gc  <Plug>VSCodeCommentary
-- omap gc  <Plug>VSCodeCommentary
-- nmap gcc <Plug>VSCodeCommentaryLine
--
--
