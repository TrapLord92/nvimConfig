-- This is a sample plugin configuration for LazyVim that sets up a VSCode-like environment in Neovim with Ayu color theme and dark icons.

-- Return the list of plugins
return {
    -- Plugin Manager
    { "folke/lazy.nvim" },
  
    -- LSP Configuration
    { 
      "neovim/nvim-lspconfig",
      config = function()
        -- List of LSP servers to setup
        local servers = { "pyright", "tsserver", "gopls" }
    
        for _, lsp in ipairs(servers) do
          require("lspconfig")[lsp].setup{}
        end
      end
    },
  
    -- Treesitter Configuration
    { 
      "nvim-treesitter/nvim-treesitter", 
      run = ":TSUpdate",
      opts = {
        ensure_installed = {
          "bash",
          "go",
          "gomod",
          "gowork",
          "gosum",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "tsx",
          "typescript",
          "vim",
          "yaml",
        }
      }
    },
  
    -- Snippet Support
    { "L3MON4D3/LuaSnip" },
    { 
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end
    },
  
    -- Fuzzy Finder (Telescope)
    {
      "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/plenary.nvim" } },
      keys = {
        {
          "<leader>ff",
          function() require("telescope.builtin").find_files() end,
          desc = "Find Files",
        },
        {
          "<leader>fg",
          function() require("telescope.builtin").live_grep() end,
          desc = "Grep in Files",
        },
      },
      opts = {
        defaults = {
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          winblend = 0,
        },
      },
    },
  
    -- File Explorer (nvim-tree)
    {
      "nvim-tree/nvim-tree.lua",
      requires = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("nvim-tree").setup({
          -- You can customize nvim-tree settings here if needed
        })
      end
    },
  
    -- Status Line (lualine)
    {
      "nvim-lualine/lualine.nvim",
      event = "VeryLazy",
      config = function()
        require('lualine').setup({
          options = {
            theme = 'ayu',  -- Set lualine theme to 'ayu'
          },
        })
      end,
    },
  
    -- Ayu Color Theme
    { 
      "Luxed/ayu-vim",
      config = function()
        -- Enable true color support
        vim.opt.termguicolors = true
  
        -- Set the background to 'dark' (use 'light' for the light theme)
        vim.opt.background = 'dark'  -- Adjust to 'light' if needed
  
        -- Set the ayucolor option to 'dark', 'mirage', or 'light'
        vim.g.ayucolor = 'mirage'  -- Adjust to your preference
  
        -- Set ayu as the colorscheme
        vim.cmd("colorscheme ayu")
      end,
    },
  
    -- Dark Icon Theme with nvim-web-devicons
    {
      "nvim-tree/nvim-web-devicons",
      config = function()
        require("nvim-web-devicons").setup({
          -- Globally enable different colors per icon
          -- highlight group for each icon (default to true)
          color_icons = true,
          -- Configure default icon color if none is provided
          default = true,
        })
      end
    },
  
    -- Remove the previous VSCode theme configuration
    -- { 
    --   "Mofiqul/vscode.nvim",
    --   config = function()
    --     vim.cmd("colorscheme vscode")
    --   end
    -- },
      
    -- Code Action Menu
    {
      "weilbith/nvim-code-action-menu",
      cmd = "CodeActionMenu",
      keys = {
        {
          "<leader>ca",
          ":CodeActionMenu<CR>",
          desc = "Open Code Action Menu"
        }
      }
    },
  
    -- Additional Plugins
    { "monaqa/dial.nvim" },
    { "ggandor/flit.nvim" },
    { "ggandor/leap.nvim" },
    { "echasnovski/mini.ai" },
    { "echasnovski/mini.comment" },
    { "echasnovski/mini.move" },
    { "echasnovski/mini.pairs" },
    { "echasnovski/mini.surround" },
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    { "JoosepAlviste/nvim-ts-context-commentstring" },
    { "tpope/vim-repeat" },
    { "gbprod/yanky.nvim" },
  
    -- Mason for managing external tools
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "stylua",
          "shellcheck",
          "shfmt",
          "flake8",
          "goimports",
          "gofumpt",
          "gomodifytags",
          "impl",
          "delve",
        },
      },
    },
  }
  