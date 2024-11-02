return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local actions = require("telescope.actions")

    opts.defaults = opts.defaults or {}
    opts.defaults.path_display = { "smart" }
    opts.defaults.file_ignore_patterns = { "node_modules", ".git", "target", ".DS_Store", "__pycache__" }
    opts.defaults.mappings = opts.defaults.mappings or {}
    opts.defaults.mappings.i = vim.tbl_extend("force", opts.defaults.mappings.i or {}, {
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
    })
  end,
}
