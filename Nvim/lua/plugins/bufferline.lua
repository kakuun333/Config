return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {},
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tab",
        indicator = {
          style = "icon",
        },
        separator_style = "slant",
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        items = {
          {
            name = "Docs",
            highlight = { undercurl = true, sp = "green" },
            auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
            matcher = function(buf)
              return buf.filename:match("%.md") or buf.filename:match("%.txt")
            end,
            separator = { -- Optional
              style = require("bufferline.groups").separator.tab,
            },
          },
        },
        diagnostics = "nvim_lsp",
        --- count is an integer representing total count of errors
        --- level is a string "error" | "warning"
        --- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
        --- this should return a string
        --- Don't get too fancy as this function will be executed a lot
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end, -- level is a string "error" | "warning"
      },
    })
    vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { silent = true })
    vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { silent = true })
    vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { silent = true })
    vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>")
  end,
}
