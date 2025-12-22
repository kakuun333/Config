-- 檔案總管（File Explorer）
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    termguicolors = true,
  },
  config = function()
    require("nvim-tree").setup({})
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { silent = true })
    -- vim.keymap.set("n", "<C-h>", ":NvimTreeFocus<CR>", { silent = true })
  end,
}
