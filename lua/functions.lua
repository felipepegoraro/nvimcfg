-- local set = vim.opt
-- local stg = vim.g  
-- telescope functions()
-- =======================================
M = {}
function M.edit_nvim()
    require('telescope.builtin').find_files{
      shorten_path = false,
      cwd = "~/.config/nvim/",
      prompt = "- dots -",
      heigth = 10,
    }
end
-- =======================================

-- =======================================
function M.open_left()
    vim.cmd[[
      let g:netrw_browse_split = 4
      let g:netrw_winsize = 10
      Vexplore
    ]]
end
-- =======================================
function M.open_tab()
    vim.cmd[[
      let g:netrw_browse_split = 4
      let g:netrw_winsize = 10
      tabnew
      Vexplore
    ]]
end
-- =======================================
function M.open_right() 
    vim.cmd[[
      let g:netrw_banner = 0
      vsplit
      let g:netrw_browse_split = 0
      Explore
    ]]
end
-- =======================================

-- =======================================
function M.build_all()
  vim.cmd [[
  if &filetype == 'tex'
    exec "! lualatex %"
  elseif &filetype == 'python'
		exec "Autopep8 | q"
	elseif &filetype == "rmd"
		exec "! Rscript -e \"rmarkdown::render('%')\""
	else
    exec "echo ' + not found.'"
  endif
  ]]
end
-- =======================================

return M
