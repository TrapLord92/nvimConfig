-- -- ~/.config/nvim/lua/plugins.lua or init.lua

-- return {
--     -- Add ayu-vim plugin
--     { "Luxed/ayu-vim" },
  
--     -- Configure LazyVim to use the ayu theme
--     {
--       "LazyVim/LazyVim",
--       opts = {
--         colorscheme = "ayu",
--       },
--     },
  
--     -- Setup lualine to use ayu theme
--     {
--       "nvim-lualine/lualine.nvim",
--       config = function()
--         require('lualine').setup({
--           options = {
--             theme = 'ayu',
--           },
--         })
--       end,
--     },
  
--     -- Optional: Additional settings for ayu-vim
--     {
--       "Luxed/ayu-vim",
--       config = function()
--         -- Enable true color support
--         vim.opt.termguicolors = true
  
--         -- Set the background to 'dark' (or 'light' for the light theme)
--         vim.opt.background = 'dark'  -- Adjust to 'light' if needed
  
--         -- Set the ayucolor option to 'dark', 'mirage', or 'light'
--         vim.g.ayucolor = 'dark'  -- Adjust to your preference
--       end,
--     },
--   }
  