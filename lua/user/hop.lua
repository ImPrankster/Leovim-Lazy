local M = {
  "phaazon/hop.nvim",
  event = "Bufenter",
  branch = "v2", -- optional but strongly recommended
}

M.keys = {
  { "s", ":HopChar2<CR>", desc = "Hop 2 chars" },
  { "S", ":HopChar1<CR>", desc = "Hop 1 char" },
}

function M.config()
  require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
end

return M
