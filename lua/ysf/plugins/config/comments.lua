require("todo-comments").setup {
  signs = true,
  sign_priority = 8,
  keywords = {
    FIX = {
      icon = " " .. nvoid.icons.diagnostics.Debug,
      color = "error",
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
    },
    TODO = { icon = " " .. nvoid.icons.ui.Check, color = "info" },
    HACK = { icon = " " .. nvoid.icons.ui.Fire, color = "warning" },
    WARN = { icon = " " .. nvoid.icons.diagnostics.Warning, color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " " .. nvoid.icons.ui.Dashboard, alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " " .. nvoid.icons.ui.Note, color = "hint", alt = { "INFO" } },
    TEST = { icon = " " .. nvoid.icons.ui.BoxChecked, color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  },
  gui_style = {
    fg = "NONE",
    bg = "BOLD",
  },
  merge_keywords = true,
  highlight = {
    before = "",
    keyword = "wide",
    after = "fg",
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true,
    max_line_len = 400,
    exclude = {},
  },
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
    info = { "DiagnosticInfo", "#2563EB" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
    test = { "Identifier", "#FF00FF" },
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    pattern = [[\b(KEYWORDS):]],
  },
}

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next { keywords = { "ERROR", "WARNING" } }
end, { desc = "Next error/warning todo comment" })

-- TODO:
-- NOTE:
-- FIX:
-- HACK:
-- WARN:
-- PERF:
-- TEST:
