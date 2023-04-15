local M = {
  "phaazon/hop.nvim",
  event = "Bufenter",
  branch = "v2", -- optional but strongly recommended
}

function M.config()
  require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
end

return M
