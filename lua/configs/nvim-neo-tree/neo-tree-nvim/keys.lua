local set_lazy_key = require("builtin.utils.keymap").set_lazy_key

local M = {
  set_lazy_key(
    "n",
    "<F2>",
    "<cmd>Neotree toggle reveal<cr>",
    { silent = false, desc = "Toggle neo-tree file explorer" }
  ),
  set_lazy_key(
    "n",
    "<F10>",
    "<cmd>Neotree toggle float buffers<cr>",
    { silent = false, desc = "Toggle neo-tree file buffer" }
  ),
  
}

return M
