return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "intelephense", "ts_ls" },
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- PHP / Laravel
    vim.lsp.config("intelephense", { capabilities = capabilities })
    vim.lsp.enable("intelephense")

    -- JavaScript / TypeScript
    vim.lsp.config("ts_ls", { capabilities = capabilities })
    vim.lsp.enable("ts_ls")

    -- Godot GDScript (connects to Godot editor's built-in LSP on port 6005)
    vim.lsp.config("gdscript", {
      capabilities = capabilities,
      cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
    })
    vim.lsp.enable("gdscript")

    -- LSP keymaps on attach
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
      end,
    })
  end,
}
