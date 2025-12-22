local set = vim.api.nvim_set_hl

-- function
set(0, "@function.cpp", { fg = "#79d82b" })
set(0, "@lsp.type.function.cpp", { fg = "#79d82b" })
set(0, "@lsp.type.method.cpp", { fg = "#79d82b" })

-- variable
set(0, "@lsp.type.variable.cpp", { fg = "#92cceb" })
set(0, "@lsp.typemod.variable.defaultLibrary.cpp", { fg = "#92cceb" })
set(0, "@lsp.typemod.variable.static.cpp", { fg = "#92cceb" })

-- macro
set(0, "@lsp.type.macro.cpp", { fg = "#beb7ff" })

-- comment (semantic)
set(0, "@lsp.type.comment.cpp", { fg = "#88846f" })

-- class / struct
set(0, "@lsp.type.class.cpp", { fg = "#4ec9b0" })
set(0, "@lsp.type.struct.cpp", { fg = "#4ec9b0" })
set(0, "@lsp.type.enum.cpp", { fg = "#4ec9b0" })
set(0, "@lsp.typemod.type.defaultLibrary.cpp", { fg = "#4ec9b0" })
set(0, "@lsp.typemod.class.defaultLibrary.cpp", { fg = "#4ec9b0" })

-- namespace
set(0, "@lsp.type.namespace.cpp", { fg = "#d5d5d5" })

-- parameter (italic + underline)
set(0, "@lsp.type.parameter.cpp", {
  fg = "#ff8000",
  italic = true,
  underline = true,
})

-- modifier / keyword / operator
set(0, "@lsp.modifier.cpp", { fg = "#d72672" })
set(0, "@lsp.type.keyword.cpp", { fg = "#d72672" })
set(0, "@lsp.type.operator.cpp", { fg = "#d72672" })
set(0, "@lsp.type.type.cpp", { fg = "#d72672" })
set(0, "@type.builtin.cpp", { fg = "#d72672" })
set(0, "@constant.builtin.cpp", { fg = "#d72672" })
-- set(0, "@punctuation.delimiter.cpp", { fg = "#d72672" })

-- enum member
set(0, "@lsp.type.enumMember.cpp", { fg = "#b8d7a3" })
set(0, "@lsp.typemod.enumMember.defaultLibrary.cpp", { fg = "#b8d7a3" })

-- property
set(0, "@lsp.type.property.cpp", { fg = "#05e1e1" })

-- comment
set(0, "@comment.cpp", { fg = "#888465" })
set(0, "@comment.documentation.cpp", { fg = "#888465" })
