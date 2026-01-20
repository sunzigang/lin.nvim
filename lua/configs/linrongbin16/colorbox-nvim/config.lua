local disabled_colors = {
  -- ["navarasu/onedark.nvim"] = true,
  ["zenbones-theme/zenbones.nvim"] = true,
  ["rrethy/base16-nvim"] = true,
  -- ["ayu-theme/ayu-vim"] = true,
  ["romainl/apprentice"] = true,
}

require("colorbox").setup({
  filter = false,
  background="dark",
  colorscheme="vscode",
  policy = "single",
  timing = "startup"
})

--[[
-- colorscheme  选择颜色预览， 确认后  修改上面plilcy字段
--
--
]]



