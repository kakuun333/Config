return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  lazy = false,
  opts = {},
  config = function()
    require("refactoring").setup({
      show_success_message = true,
      prompt_func_return_type = {
        go = false,
        java = false,

        cpp = true,
        c = true,
        h = true,
        hpp = true,
        cxx = true,
      },
      prompt_func_param_type = {
        go = false,
        java = false,

        cpp = true,
        c = true,
        h = true,
        hpp = true,
        cxx = true,
      },
    })
  end,
}
