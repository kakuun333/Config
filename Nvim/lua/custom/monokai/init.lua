local M = {}

local colors = {
  bg = "#272822",
  fg = "#ffffff",
  ariana = "#d72672",
  black = "#000000",
  coconut = "#794e41",
  carbon_steel = "#575a5a",
  matte_taupe = "#3e3d32",
  bandicoot = "#88846f",
  treekfrogkgreen = "#79d82b",
  dusty_lemon = "#e6db74",
  soft_blue = "#92cceb",
  subtle_blue_green = "#4ec9b0",
}

-- comment
function M.colorscheme()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  vim.o.background = "dark"
  vim.g.colors_name = "monokai"

  local set = vim.api.nvim_set_hl

  -- Base UI
  set(0, "Normal", { fg = colors.fg, bg = colors.bg })
  set(0, "Visual", { bg = colors.carbon_steel })
  set(0, "Search", { bg = colors.coconut })
  set(0, "CursorLine", { bg = colors.matte_taupe })

  -- Syntax
  set(0, "Comment", {
    fg = colors.bandicoot, --[[ italic = true ]]
  })
  set(0, "Constant", { fg = colors.tree_frog_green })
  set(0, "String", { fg = colors.dusty_lemon })
  set(0, "Identifier", { fg = colors.soft_blue })
  set(0, "Function", { fg = colors.tree_frog_green })
  set(0, "Statement", { fg = colors.ariana })
  set(0, "Keyword", { fg = colors.ariana })
  set(0, "Type", { fg = colors.subtle_blue_green })
  set(0, "Special", { fg = colors.white })

  -- Diagnostics
  -- set(0, "DiagnosticUnderlineError")
end

return M
