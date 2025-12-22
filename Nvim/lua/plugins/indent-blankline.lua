-- 縮排參考線
return {
  "lukas-reineke/indent-blankline.nvim",
  dependencies = {
    "TheGLander/indent-rainbowline.nvim",
  },
  main = "ibl",
  ---@module "ibl"
  opts = function(_, opts)
    -- Other blankline configuration here
    return require("indent-rainbowline").make_opts(opts)
  end,

}
