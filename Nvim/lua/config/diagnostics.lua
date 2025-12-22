-- 統一的 Diagnostic Nerd Font Icons
local diagnostic_icons = {
  Error = "",
  Warn = "",
  Info = "",
  Hint = "",
}

-- 定義 Diagnostic Signs（給 gutter + Trouble 用）
for type, icon in pairs(diagnostic_icons) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, {
    text = icon,
    texthl = hl,
    numhl = "",
  })
end

-- 設定 Diagnostic 顯示行為（行尾用同一組 icon）
vim.diagnostic.config({
  virtual_text = {
    spacing = 1,
    prefix = function(diagnostic)
      local map = {
        [vim.diagnostic.severity.ERROR] = diagnostic_icons.Error,
        [vim.diagnostic.severity.WARN] = diagnostic_icons.Warn,
        [vim.diagnostic.severity.INFO] = diagnostic_icons.Info,
        [vim.diagnostic.severity.HINT] = diagnostic_icons.Hint,
      }
      return map[diagnostic.severity] or ""
    end,
  },

  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

