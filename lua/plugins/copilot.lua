return {
  "github/copilot.vim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    vim.keymap.set("i", "<C-p>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false, silent = true })
    vim.g.copilot_no_tab_map = true
  end,
}
