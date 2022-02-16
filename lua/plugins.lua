vim.cmd[[packadd packer.nvim]]

require("packer").startup({
  function(use) 
    use({'wbthomason/packer.nvim'})
    use 'dstein64/vim-startuptime' 

-- tpope-plugins
    use 'tpope/vim-surround' -- (ds')|(cs'") 
    use 'tpope/vim-commentary' -- (C-v gcc) or (C-c)

-- something about sp---eed
    use 'phaazon/hop.nvim' -- C-i
    use 'nacro90/numb.nvim' -- :[0-9]+
    use 'alvan/vim-closetag' -- <*></*>
    use 'windwp/nvim-autopairs' -- '"({[
    use 'terryma/vim-multiple-cursors' -- v C-n

-- unicode
    use 'vim-skk/eskk.vim' -- i C-j 

-- about: customization
    use 'lukas-reineke/indent-blankline.nvim'
    use 'humanoid-colors/vim-humanoid-colorscheme'
    use 'marko-cerovac/material.nvim'
      vim.g.material_style = "deep ocean" 

-- mod ~/.local/share/nvim/site/pack/packer/start/material.nvim/lua/material
-- mod line: 148 
-- mod ....: material.bg = "#000000"

-- files++
    use { 'nvim-telescope/telescope.nvim', 
      requires = { {'nvim-lua/plenary.nvim'} }
    }

-- debugging 
-- use 'mfussenegger/nvim-dap'

-- "better quickfix window"
    use {'kevinhwang91/nvim-bqf', ft = 'qf'}
	
-- git diff... 
    use {'sindrets/diffview.nvim'}

-- lsp + cmp + luasnippets
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'ray-x/lsp_signature.nvim'
--  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    use 'onsails/lspkind-nvim'
		
  end,
})
