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
    highlights = {
      fill = {
        bg = "",
      },
    },
    options = {
      indicator = {
        style = "none",
      },
      diagnostics = "nvim_lsp",
      close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
      right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
      separator_style = { "", "" }, -- | "thick" | "thin" | { 'any', 'any' },
    },
  }
end

return M
