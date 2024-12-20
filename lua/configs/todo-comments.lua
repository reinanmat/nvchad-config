local colors = require("base46").get_theme_tb "base_30"
local todo_comments = require("todo-comments")
local keymap = vim.keymap

keymap.set("n", "]t", function()
  todo_comments.jump_next()
end, { desc = "Next todo comment" })

keymap.set("n", "[t", function()
  todo_comments.jump_prev()
end, { desc = "Previous todo comment" })

-- TODO: Todo Tests
-- PERF: fully optimised
-- HACK: hmmm. this looks a bit funky
-- NOTE: adding a note
-- FIX: this needs fixing
-- TEST: test this
-- WARNING: ???

todo_comments.setup({
  signs = true,
  sign_priority = 8,
  keywords = {
    FIX = { icon = " ", color = colors.red, alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
    TODO = { icon = " ", color = colors.blue },
    HACK = { icon = " ", color = colors.purple },
    WARN = { icon = " ", color = colors.orange, alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", colors = colors.green, alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = colors.white, alt = { "INFO" } },
    TEST = { icon = "󰇺 ", color = colors.yellow, alt = { "TESTING", "PASSED", "FAILED" } },
  },
  highlight = {
    multiline = true,
    multiline_pattern = "^.",
    multiline_context = 10,
    before = "",
    keyword = "wide",
    after = "fg",
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true,
    max_line_len = 400,
    exclude = {},
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
})
