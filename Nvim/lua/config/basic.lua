-- 自動載入外部修改
vim.opt.autoread = true

------[[行號]]------

-- 行號
vim.opt.number = true 

-- 相對行號
vim.opt.relativenumber = true 

-- 當前行號高亮
vim.opt.cursorline = true

-- 一行字元的數量
-- vim.opt.colorcolumn = "80" 

------[[縮排]]------

-- 按下 Tab 自動轉換成空格
vim.opt.expandtab = true

-- 一個制表符（\t）對應的空格數
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0


------[[插件]]------
require("monokai-nightasty").load()
