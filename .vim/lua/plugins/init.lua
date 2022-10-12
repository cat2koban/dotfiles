vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use ({'wbthomason/packer.nvim'})
  use ({
    'navarasu/onedark.nvim',
    config = function ()
      require('plugins/onedark')
    end
  })
  use ({'cat2koban/ghlink.vim'})
  use ({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function ()
      require('plugins/nvim-tree')
    end
  })
  use ({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function ()
      require('plugins/lualine')
    end
  })
  use ({'lukas-reineke/indent-blankline.nvim'})
  use ({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function ()
      require('plugins/telescope')
    end
  })
  use ({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function ()
      require('plugins/nvim-treesitter')
    end
  })
end)
