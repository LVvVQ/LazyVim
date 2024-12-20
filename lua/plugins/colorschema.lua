return {
  -- {
  --   "sainnhe/sonokai",
  --   lazy = false,
  --   init = function()
  --     vim.g.sonokai_style = "andromeda"
  --     vim.g.sonokai_transparent_background = 1
  --     vim.g.sonokai_better_performance = 1
  --
  --     vim.g.transparent_background = true
  --     vim.g.italic_comments = true
  --     vim.g.italic_keywords = true
  --     vim.g.italic_functions = false
  --     vim.g.italic_variables = false
  --   end,
  -- },

  {
    "navarasu/onedark.nvim",
    lazy = false,
    opts = {
      style = "dark",
      transparent = true,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
