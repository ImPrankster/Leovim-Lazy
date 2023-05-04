local M = {
  "willothy/nvim-cokeline",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  dependencies = {
    "famiu/bufdelete.nvim",
    "kyazdani42/nvim-web-devicons",
  },
}

function M.config()
  local get_hex = require("cokeline/utils").get_hex
  local comments_fg = get_hex("Comment", "fg")
  local errors_fg = get_hex("DiagnosticError", "fg")
  local warnings_fg = get_hex("DiagnosticWarn", "fg")

  require("cokeline").setup {
    default_hl = {
      fg = function(buffer)
        return buffer.is_focused and get_hex("ColorColumn", "bg") or get_hex("Normal", "fg")
      end,
      bg = function(buffer)
        return (buffer.diagnostics.errors ~= 0 and errors_fg)
          or (buffer.diagnostics.warnings ~= 0 and warnings_fg)
          or ((not buffer.is_focused) and get_hex("ColorColumn", "bg") or get_hex("Normal", "fg"))
      end,
    },

    components = {
      {
        text = function(buffer)
          return " " .. buffer.devicon.icon
        end,
        style = function(buffer)
          return (buffer.is_modified and "italic") or nil
        end,
      },
      {
        text = function(buffer)
          return buffer.unique_prefix
        end,
        fg = comments_fg,
      },
      {
        text = function(buffer)
          return buffer.filename .. " "
        end,
        style = function(buffer)
          return (buffer.is_modified and "italic") or nil
        end,
      },
    },
  }
end

return M
