local M = {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
}

function M.config()
  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }

  keymap("n", "<TAB>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
  keymap("n", "<leader>ha", "<cmd>lua require('user.harpoon').mark_file()<cr>", opts)
  keymap("n", "<F1>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
  keymap("n", "<F2>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)
  keymap("n", "<F3>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", opts)
  keymap("n", "<F4>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", opts)
end

function M.mark_file()
  require("harpoon.mark").add_file()
  vim.notify "󱡅  marked file"
end

return M
