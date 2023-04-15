local M = {
  "nvim-telescope/telescope.nvim",
  event = "Bufenter",
  cmd = { "Telescope" },
  dependencies = {
    {
      "ahmedkhalf/project.nvim",
    },
  },
}

local actions = require "telescope.actions"

M.opts = {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },
    mappings = {
      i = {
        ["<Down>"] = actions.cycle_history_next,
        ["<Up>"] = actions.cycle_history_prev,
        ["<Tab>"] = actions.move_selection_previous,
        ["<S-Tab>"] = actions.move_selection_next,
        ["<C-k>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<C-j>"] = actions.toggle_selection + actions.move_selection_better,
      },
      n = {
        ["l"] = actions.select_default,
        ["h"] = actions.select_horizontal,
        ["v"] = actions.select_vertical,
      },
    },
  },
}

return M
