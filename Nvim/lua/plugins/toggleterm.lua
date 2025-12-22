return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    --[[ things you want to change go here]]
  },
  config = function()
    vim.keymap.set("n", "<leader>tt", function()
      require("toggleterm").toggle()
    end, { silent = true, desc = "Toggle terminal" })
  end,
}
