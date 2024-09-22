return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { mode = "i", "<C-k>", false }
    -- change a keymap
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover }
    keys[#keys + 1] = { "gH", vim.lsp.buf.signature_help }

    return {
      servers = {
        jdtls = {
          keys = {
            { "<leader>oi", "<Cmd>lua require('jdtls').organize_imports()<CR>", desc = "Organize Imports" },
          },
        },
      },
      setup = {
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    }
  end,
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
  },
}
