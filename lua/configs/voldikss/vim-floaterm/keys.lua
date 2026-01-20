local set_lazy_key = require("builtin.utils.keymap").set_lazy_key

local M = {
  set_lazy_key(
    "n",
    "<F9>",
    ":<C-u>FloatermToggle<CR>",
    { silent=false,  desc = "Toggle Floaterm" }
  ),
  set_lazy_key(
    "t",
    "<F9>",
    "<C-\\><C-n>:FloatermToggle<CR>",
    { silent=false, desc = "Toggle Floaterm from terminal" }
  ),
}

return M
