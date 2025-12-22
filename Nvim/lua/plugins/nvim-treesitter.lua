-- 語法高亮
return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local languages = {
      "cpp",
      "python",

      -- Shader
      "glsl",
      "hlsl",
      "slang",

      -- Lua
      "lua",
      "luau",

      -- Git
      "gitignore",
      "gitattributes",

      -- Other
      "editorconfig",
      "markdown",
      "json",
      "toml",
    }

    require("nvim-treesitter").install(languages)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        -- syntax highlighting, provided by Neovim
        vim.treesitter.start()
        -- folds, provided by Neovim

        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo.foldmethod = 'expr'

        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
