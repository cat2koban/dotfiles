local indent  = 2

vim.o.wrap = true -- Wrap text lineDelete all strings in Vim with delete button
vim.o.mouse = 'a' -- Enable mouse action for all mode
vim.o.number = true -- Print line number
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8','iso-2022-jp','euc-jp','sjis'
vim.o.fileformats = 'unix','dos','mac'
vim.o.wildmenu = true -- Command line completion in extended mode
vim.o.hlsearch = true -- Highlight all matching text
vim.o.incsearch = true -- Make search behave like modern browsers
vim.o.wrapscan = true -- Search again from the beginning of the file
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.smartcase = true -- Don't ignore case with capitals
vim.o.clipboard = 'unnamedplus' -- Set those yanks in my os clipboards
vim.o.laststatus = 2 -- Display status line under window everytime
vim.o.smarttab = true -- Insert (or Delete) spaces by 'shiftwidth', 'softtabstop', 'tabstop'
vim.o.backspace = 'indent,eol,start' -- Delete all strings in Vim with delete button
vim.o.tabstop = indent -- Number of spaces tabs count for
vim.o.shiftwidth = indent -- Size of an indent
vim.o.softtabstop = indent
vim.o.showtabline = indent
vim.o.cursorline = true -- Display the current line
vim.o.ignorecase = true -- Don't distinguish between upper and lower case letters when searching
vim.o.smartindent = true -- Insert indents automatically
vim.o.virtualedit = 'block'
vim.o.termguicolors = true
vim.o.shell = '/bin/zsh'

vim.g.noswapfile = true -- Don't create swapfile when open the new buffer
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand('~/.vim/undo')

local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Remove whitespace on save
autocmd("BufWritePre", {
	pattern = "*",
	command = ":%s/\\s\\+$//e",
})

vim.g.mapleader = ' '
-- Normal
vim.keymap.set('n', '<Esc><Esc>', ':<C-u>set nohlsearch<Return>', {})
vim.keymap.set('n', '<C-h>', ':tabprevious<Return>', {})
vim.keymap.set('n', '<C-l>', ':tabnext<Return>', {})
vim.keymap.set('n', '<C-n>', ':tabnew<Return>', {})
vim.keymap.set('n', '<Leader>w', ':bd<Return>', {})
vim.keymap.set('n', '<Leader>q', ':q<Return>', {})

-- Insert
vim.keymap.set('i', 'jj', '<Esc>', { silent = true })

-- vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'cat2koban/ghlink.vim'
  use ({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  })
  use ({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })
  use 'lukas-reineke/indent-blankline.nvim'
  use ({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim' }
  })
  use ({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  })
  use 'RRethy/nvim-treesitter-endwise'
  use 'tpope/vim-rails'
  use 'tpope/vim-fugitive'
  use 'olimorris/onedarkpro.nvim'
  use ({
    'romgrk/barbar.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  })
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/vim-vsnip'
end)

-- plugins ><;

-- bufferline:
require('bufferline').setup {
  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button
  closable = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Excludes buffers from the tabline
  exclude_ft = {'javascript'},
  exclude_name = {'package.json'},

  -- Show every buffer
  hide = {current = false, inactive = false, visible = false},


  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = true,

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the minimum padding width with which to surround each tab
  minimum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
}
-- bufferline

-- cmp {{
local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    -- { name = "vsnip" },
    { name = "buffer" },
    { name = "path" },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-l>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm { select = true },
  }),
  experimental = {
    ghost_text = true,
  },
})
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "path" },
    { name = "cmdline" },
  },
})
-- }} cmp

-- lualine: {{
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
-- }} lualine

-- nvim-treesitter: {{
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  ignore_install = { 'phpdoc' },
  highlight = {
    enable = true,
    disable = { 'ruby' },
    additional_vim_regex_highlighting = false,
  },
  endwise = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
}
-- }} nvim-treesitter

-- nvim-tree: {{
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "l", action = "edit" },
        { key = "<C-e>", action = "close" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
})

vim.keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>', {})
-- }} nvim-tree

-- onedarkpro: {{
vim.cmd("colorscheme onedarkpro")

require("onedarkpro").setup({
  dark_theme = "onedark", -- The default dark theme
  light_theme = "onelight", -- The default light theme
  caching = false, -- Use caching for the theme?
  cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/onedarkpro/"), -- The path to the cache directory
  colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
  highlights = {}, -- Override default highlight and/or filetype groups
  filetypes = { -- Override which filetype highlight groups are loaded
    javascript = true,
    lua = true,
    markdown = true,
    php = true,
    python = true,
    ruby = true,
    rust = true,
    toml = true,
    yaml = true,
  },
  plugins = { -- Override which plugin highlight groups are loaded
    -- See the Supported Plugins section for a list of available plugins
  },
  styles = { -- Choose from "bold,italic,underline"
    types = "NONE", -- Style that is applied to types
    numbers = "NONE", -- Style that is applied to numbers
    strings = "NONE", -- Style that is applied to strings
    comments = "NONE", -- Style that is applied to comments
    keywords = "NONE", -- Style that is applied to keywords
    constants = "NONE", -- Style that is applied to constants
    functions = "NONE", -- Style that is applied to functions
    operators = "NONE", -- Style that is applied to operators
    variables = "NONE", -- Style that is applied to variables
    conditionals = "NONE", -- Style that is applied to conditionals
    virtual_text = "NONE", -- Style that is applied to virtual text
  },
  options = {
    bold = true, -- Use bold styles?
    italic = true, -- Use italic styles?
    underline = true, -- Use underline styles?
    undercurl = true, -- Use undercurl styles?

    cursorline = false, -- Use cursorline highlighting?
    transparency = false, -- Use a transparent background?
    terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
    window_unfocused_color = false, -- When the window is out of focus, change the normal background?
  }
})
-- }} onedarkpro

-- telescope: {{
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-f>', ':Telescope find_files hidden=true<CR>', {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
-- }} telescope

-- mason: {{
require('mason').setup()
require('mason-lspconfig').setup_handlers({ function(server)
  local opt = {
    on_attach = function(client, bufnr)
      -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
      local opts = { noremap=true, silent=true }
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gf', '<cmd>lua vim.lsp.buf.format {async=true}<CR>', opts)

      vim.api.nvim_buf_set_keymap(bufnr, "n", "K",  "<cmd>Lspsaga hover_doc<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>Lspsaga lsp_finder<CR>', opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "ga", "<cmd>Lspsaga code_action<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "gn", "<cmd>Lspsaga rename<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "ge", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)

      vim.cmd [[
      let s:bl = ['json'] " set blacklist filetype
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold,CursorHoldI <buffer> if index(s:bl, &ft) < 0 | lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved,CursorMovedI <buffer> if index(s:bl, &ft) < 0 | lua vim.lsp.buf.clear_references()
      augroup END
      ]]
    end,
    capabilities = require('cmp_nvim_lsp').default_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )
  }
  require('lspconfig')[server].setup(opt)
end })
-- }} mason
