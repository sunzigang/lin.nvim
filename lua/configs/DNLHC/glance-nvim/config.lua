local glance = require("glance")
local layout = require("builtin.utils.layout")

glance.setup({
  height = layout.editor.height(0.99, 3, 18),
  folds = {
    folded = false,
  },

  theme = {
    enable = true,
    mode = 'brighten',
  },

  border = {
    enable = true,
    top_char = '―',
    bottom_char = '―',
  },
  hooks = {
    before_open = function(results, open, jump, method)
      if #results == 1 then
        jump(results[1])
      else
        open(results)
      end
    end,
  }

})
