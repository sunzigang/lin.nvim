
-- Disabled plugins:
return { 
    ["wallpants/github-preview.nvim"] = true,   --  在浏览器中预览 Markdown 文件（模拟 GitHub 渲染效果），通过 :GithubPreviewToggle 调用
    ["toppair/peek.nvim"] = true, --  在 Neovim 内部直接预览 Markdown（使用 Deno 构建），无需跳出编辑器
    ["stevearc/stickybuf-nvim"] = true, -- 用于将缓冲区锁定到窗口
    ["folke/flash.nvim"] = true,  -- 更现代的跳转工具（支持多光标、搜索集成等）
    ["tpope/vim-repeat"] = true, --- 让自定义操作支持 . 重复（如注释后按 . 可重复注释
    ["moll/vim-bbye"] = true,  -- 安全关闭缓冲区而不退出窗口（:Bdelete）
    ["ahmedkhalf/project.nvim"]=true, -- 项目管理插件
    -- ["saghen/blink.indent"] = true
  }
