return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      write_all_buffers = true, -- :wall
    })
  end,
}
