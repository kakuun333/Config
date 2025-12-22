return -- Lazy
{
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local opts = {}
    require("monokai-nightasty").load(opts)
  end,
}
