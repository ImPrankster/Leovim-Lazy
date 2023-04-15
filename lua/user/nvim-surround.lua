local M = {
  "kylechui/nvim-surround",
  event = "BufRead",
}

function M.config()
  require("nvim-surround").setup {}
end

return M
