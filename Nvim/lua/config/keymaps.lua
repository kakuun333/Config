-- 垂直分割 .cpp/.h
vim.keymap.set("n", "<leader>vh", function()
  local ext = vim.fn.expand("%:e")
  local root = vim.fn.expand("%:r")
  local hfile = root .. ".h"
  local cppfile = root .. ".cpp"

  if ext == "cpp" then
    vim.cmd("leftabove vsplit " .. hfile)
    vim.cmd("wincmd l")
  elseif ext == "h" then
    vim.cmd("rightbelow vsplit " .. cppfile)
    vim.cmd("wincmd h")
  else
    print("Not a .cpp or .h file")
  end
end, { desc = "Vertical split .cpp/.h pair with proper positions" })

-- 切換視窗快捷鍵
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- LSP Rename 快捷鍵
vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, { desc = "LSP Rename" })

-- 系統剪貼簿 複製／貼上
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { silent = true })
vim.keymap.set("i", "<leader>p", "<C-r>+", { silent = true })
