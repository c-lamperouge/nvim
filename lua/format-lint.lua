local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

require("null-ls").setup({
  sources = {
    -- for lua
    require("null-ls").builtins.formatting.stylua,
    -- for rust
    require("null-ls").builtins.formatting.rustfmt,
    -- for js and vue
    require("null-ls").builtins.code_actions.eslint.with({
      prefer_local = "node_modules/.bin",
    }),
    require("null-ls").builtins.diagnostics.eslint.with({
      prefer_local = "node_modules/.bin",
    }),
    require("null-ls").builtins.formatting.eslint.with({
      prefer_local = "node_modules/.bin",
    }),
  },

  -- sync formatting on save
  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
})
