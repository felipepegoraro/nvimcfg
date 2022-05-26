-- ================================
-- FUNCTIONS TO BEST STARTUP_TIME
-- ================================
-- --------------------------------
function load_lsp()
  vim.cmd [[
    lua require('lsp_cmp')
    LspStart
  ]]
end
-- --------------------------------
function load_plugins()
  vim.cmd [[
    lua require('numb').setup()
    lua require('hop').setup()
    lua require('nvim-autopairs').setup()
  ]]
end
-- --------------------------------
vim.cmd [[
  augroup user_cmds
  autocmd!
  autocmd VimEnter * lua vim.defer_fn(load_plugins, 3)
  autocmd VimEnter * lua vim.defer_fn(load_lsp, 7)
  augroup END
]]
-- --------------------------------
