local M = {
  "LunarVim/darkplus.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

-- local M = {
--   "rose-pine/neovim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
-- }

-- local M = {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000,
--     lazy = false,
--   }

function M.config()
  vim.cmd.colorscheme "darkplus"
end

return M
