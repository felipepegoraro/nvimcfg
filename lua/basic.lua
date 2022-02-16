  -- ::BASICS:: --
---------------------
local set = vim.opt  
local stg = vim.g

-- map-leader ------------------------------
local map = vim.api.nvim_set_keymap 
local slc = {noremap = true}
  map('n', '<SPACE>', '<Nop>', {noremap = true})   
  stg.mapleader = ' '
-- map-leader ------------------------------

set.history        = 1000
set.termguicolors  = true
set.background     = "dark"
set.cursorline     = true 
set.autochdir      = true
set.visualbell     = false 
set.errorbells     = false

-- splits
set.splitright     = true
set.splitbelow     = true

-- ?
set.scrolloff      = 8
stg.nocompatible   = true

-- tab
set.tabstop        = 2
set.softtabstop    = 2
set.expandtab      = false 
set.autoindent     = true
set.virtualedit    = "onemore"
set.smartindent    = false
set.shiftwidth     = 2

-- numbers
set.number         = true
set.relativenumber = true

-- <>(){}
set.showmatch      = false
set.showmode       = true 
set.mouse          = 'nivh'

-- E/S/L/T...xplore
stg.netrw_banner    = 0 -- disable banner 
stg.netrw_liststyle = 3 -- style

-- search
set.hlsearch       = true 
set.incsearch      = true 
set.ignorecase     = false

-- folding in vim
set.foldmethod     = "marker"

-- block
set.virtualedit    = "block"



-- statusline
vim.cmd [[
  if has('statusline')
    set statusline=
    set statusline +=%1*\ %n\ %*            "buffer number
    set statusline +=%5*%{&ff}%*            "file format
    set statusline +=%3*%y%*                "file type
    set statusline +=%2*%*%m%*              "modified flag
    set statusline +=%4*\ %<%t%*            "full path

    set statusline +=%1*%=%5l%*             "current line
    set statusline +=%1*/%L%*               "total lines
    set statusline +=%1*%4v\ %*             "virtual column number
    set statusline +=%2*[0x%04B]\ %*        "character
  endif
]]
-- set statusline+=\ [%{getcwd()}]          " Current dir
-- set statusline +=%4*\ %<%F%*            "full path
-- set laststatus=2
-- set statusline+=%w%h%m%r                 " Options
-- set statusline+=\ [%{&ff}/%Y]            " Filetype
-- set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right
-- set statusline+=[%2*0x%04B\ %*]          "character under cursor

-- disabled some builtin plugins
local disabled_built_ins = {
  -- "netrw",
  -- "netrwPlugin",
  -- "netrwSettings",
  -- "netrwFileHandlers",
  -- "gzip",
  -- "zip",
  -- "zipPlugin",
  -- "tar",
  -- "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
