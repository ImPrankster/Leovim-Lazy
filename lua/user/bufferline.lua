local M = {
  "akinsho/bufferline.nvim",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  dependencies = {
    {
      "famiu/bufdelete.nvim",
    },
  },
}

function M.config()
  require("bufferline").setup {
    options = {
      diagnostics = "nvim_lsp",
    },
  }
end

return M
