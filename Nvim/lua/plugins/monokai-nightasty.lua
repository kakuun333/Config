-- 顏色主題 https://github.com/polirritmico/monokai-nightasty.nvim
return {
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-nightasty").load()
	

  end,
}
