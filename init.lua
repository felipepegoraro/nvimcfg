-- ===================================
--| Author: Felipe Pegoraro
--| License: unlicense
--| https://github.com/felipepegoraro/
-- ===================================

-- packer: plugin manager
require('packer')

-- config: 1
require('plugins')
require('basic')
require('keymappings')
require('functions')

-- config: 2
require('customs.startup_func')
require('customs.anothers')
vim.cmd [[ colorscheme material ]] 
