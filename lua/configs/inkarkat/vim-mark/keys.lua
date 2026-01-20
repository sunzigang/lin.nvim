local set_lazy_key = require("builtin.utils.keymap").set_lazy_key

local M = {
  -- toggle cursor word in normal/visual mode
  set_lazy_key("n", "<F8>", "<Plug>MarkSet", { desc = "Toggle highlighting mark" }),
  set_lazy_key("x", "<F8>", "<Plug>MarkIWhiteSet", { desc = "Toggle highlighting mark" }),

  -- search next/previous word
  -- set_lazy_key("n", "<leader>mn", "<Plug>MarkSearchNext", { desc = "Next highlighting mark" }),
  -- set_lazy_key("n", "<leader>mN", "<Plug>MarkSearchPrev", { desc = "Previous highlighting mark" }),
}

return M
