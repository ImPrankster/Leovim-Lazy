local M = {
  "windwp/nvim-ts-autotag",
  event = "Bufenter",
}

function M.config()
  require("nvim-ts-autotag").setup()
end

return M
