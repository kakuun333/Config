-- 行號
vim.opt.number = true

-- 相對行號
vim.opt.relativenumber = true

-- 當前行號高亮
vim.opt.cursorline = true

-- 一行字元的數量
-- vim.opt.colorcolumn = "80"

vim.o.guifont = "JetBrainsMono Nerd Font:h10"
vim.keymap.set("n", "<C-=>", function()
  fontsize = fontsize + 1
  vim.o.guifont = "JetBrainsMono Nerd Font:h" .. fontsize
end)

vim.keymap.set("n", "<C-->", function()
  fontsize = fontsize - 1
  vim.o.guifont = "JetBrainsMono Nerd Font:h" .. fontsize
end)
