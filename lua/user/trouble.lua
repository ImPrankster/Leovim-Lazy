local M = {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  event = "Bufenter",
}

function M.config()
  require("trouble").setup()
end

return M
