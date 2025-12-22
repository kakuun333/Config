return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Lua LSP
    vim.lsp.config("lua_ls", {
      cmd = { "lua-language-server" },
      filetypes = { "lua" },
      root_marker = { ".luarc.json", ".luarc.jsonc", ".git" },
    })

    -- Clangd
    vim.lsp.config("clangd", {
      cmd = { "clangd", "--background-index", "--cross-file-rename" },
      filetypes = { "c", "cpp", "objc", "objcpp" },

      root_marker = { "compile_commands.json", ".git" },
    })
  end,
}
