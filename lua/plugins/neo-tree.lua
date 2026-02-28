return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", 
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true, -- 如果是最后一个窗口，关闭 neo-tree 时退出 Neovim
        -- popup_border_style = "rounded",
        clipboard = {
          sync = "universal",
        },
        enable_git_status = true, -- 显示
        enable_diagnostics = false, -- 显示 LSP 诊断错误/警告图标
        open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- 这些类型不被替换

        -- 文件系统源配置
        filesystem = {
          bind_to_cwd = false, -- 不强制绑定到 cwd
          follow_current_file = {
            enabled = true, -- 自动展开并聚焦当前文件
          },
          use_libuv_file_watcher = true, -- 使用 libuv 监听文件变化
          filtered_items = {
            visible = false, -- 显示隐藏文件（按 i 切换）
            hide_dotfiles = false,
            hide_gitignored = false,
          },
        },

        window = {
          position = "left",
          width = 0.33 -- 固定宽度
        },

        -- 可选：启用 source selector（winbar 或 statusline）
        -- source_selector = {
        --  winbar = false,
        --  statusline = false,
        -- },
      })
    end,
  },
}
