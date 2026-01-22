local message = require("builtin.utils.message")

require("project_nvim").setup({
   patterns = {
       ".git",
       "_darcs",
       ".hg",
       ".bzr",
       ".svn",
       "Makefile",
       "package.json",
       "tsconfig.json",
       "pyproject.toml",
       "Cargo.toml",
       "go.mod",
       "mix.exs",
       "build.sbt",
       "pom.xml",
       "composer.json",
    },


    -- 启用自动切换（打开文件时自动 cd 到项目根）
    manual_mode = false,

    -- 检测深度（默认 5 层）
    detection_methods = { "pattern", "lsp" }, -- 先 pattern，再 fallback 到 LSP workspace

    -- 是否在进入项目时执行回调（可用于加载 per-project 配置）
    on_project_change = function(project_root)
      -- 可选：打印提示
      vim.notify("Project root: " .. project_root, vim.log.levels.INFO)

      -- 示例：自动恢复 resession 会话（见下文协同建议）
      if package.loaded["resession"] then
        local session_path = Path:new(project_root, ".nvim-session.vim")
        if session_path:exists() then
          require("resession").load_session(project_root)
        end
      end
    end,

    -- 忽略的文件/目录（正则）
    ignore_lsp = {},
    exclude_dirs = {
      "~/.cargo",
      "~/node_modules",
      "~/Library/Caches",
      "/tmp",
    },

    -- 性能优化：只在需要时计算
    show_hidden = false,
    scope_chdir = true, -- 进入项目时 :cd 到根目录（方便 terminal 和 make）

})

