local M = {
  "rmagatti/auto-session",
  lazy = false,
}

M.config = function()
  require("auto-session").setup {
    log_level = "error",
    auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
  }
end

return M
