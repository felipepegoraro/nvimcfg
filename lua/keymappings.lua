-- map-leader ------------------------------
local map = vim.api.nvim_set_keymap
local stg = vim.g
local slc = {noremap = true}
-- map-leader ------------------------------
map('n', '<SPACE>', '<Nop>', {noremap = true})
stg.mapleader = ' '
-- map-leader ------------------------------

-- sub-basics ------------------------------
map('n', 'j', 'gj', slc)
map('n', 'k', 'gk', slc)
-- sub-basics ------------------------------
vim.cmd [[
  vnoremap > >gv
  vnoremap < <gv
  vnoremap <leader>z zf
  vnoremap <leader>a za<esc>
]]
-- sub-basics ------------------------------

-- nnoremap <leader>ep :vsp ~/.config/nvim/lua/plugins.lua<CR>

-- about panes and splits
map('n', '<C-M-s>', ':resize -5 <CR>', slc)
map('n', '<C-M-w>', ':resize +5 <CR>', slc)
map('n', '<C-M-d>', ':vertical resize -5 <CR>', slc)
map('n', '<C-M-a>', ':vertical resize +5 <CR>', slc)

-- change panes/window
map('n', '<C-K>', '<C-w>k', slc)
map('n', '<C-H>', '<C-W>h', slc)
map('n', '<C-J>', '<C-W>j', slc)
map('n', '<C-L>', '<C-W>l', slc)
-- change panes/window

map('n', '<leader>n', ':tabnew ', slc)
map('n', ',', ':tabprevious <CR>', slc)
map('n', '.', ':tabnext <CR>', slc)
map('n', '<leader>d', ':tabclose <CR>', slc)
-- about panes and splits


-- about speed 
map('n', '<C-c>', ':Commentary <CR>', slc) --+visual mode: gcc
map('n', '<M-i>', ':HopLine <CR>', slc)
-- about speed 

-- -- -- basics =====================================
map('n', 'tt' , ':Telescope <CR>', slc)
map('n', 'gkb', ':Telescope keymaps <CR>', slc)
map('n', 'gst', ':Telescope git_status <CR>', slc)
map('n', 'gpt', ':Telescope vim_options <CR>', slc)
map('n', 'gre', ':Telescope registers <CR>', slc)
map('n', 'gbf', ':Telescope buffers <CR>', slc)
-- -- -- for read the docs ==========================

-- -- -- for read the docs ==========================
map('n', 'zq', '<C-w><C-w> :q <CR>', slc)
map('n', 'gmp', ':Telescope man_pages <CR>', slc)
-- -- -- for read the docs ==========================

-- -- -- substitute the dashboard ===================
map('n', '<leader>c', ":Telescope colorscheme <CR>", slc)
map('n', '<leader>h', ":Telescope oldfiles <CR>", slc)
-- -- -- substitute the dashboard ===================

-- telescope_functions_file =========================
map('n', 'tn', ":lua require('functions').edit_nvim()<CR>", slc)
-- Telescope ========================================

-- file_browser functions ===========================
map('n', '<M-m>', ":lua require('functions').open_right()<CR>", slc)  -- Lexplore
map('n', '<M-s>', ":lua require('functions').open_tab()<CR>", slc)  -- Texplore
map('n', '<leader><leader>', ":lua require('functions').open_left()<CR>", slc)
-- file_browser functions ===========================

-- use '%' to match pairs 
vim.cmd [[ set matchpairs+=<:> ]] --%

-- BUILD / RUN ======================================
map('n', '<M-q>', ":lua require('functions').build_all()<CR>", slc)
-- map('n', '<M-w>', ":FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>",slc)
map('n', '<M-w>', ":FloatermNew<CR>", slc)
-- BUILD / RUN ======================================

