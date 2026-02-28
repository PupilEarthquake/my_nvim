local active_theme = "ayu"

local themes = {
  ayu = {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup(
        {
           mirage = false,
           terminal = true,
           overrides = {
             Normal = { bg = "None" },
             NormalFloat = { bg = "none" },
             ColorColumn = { bg = "None" },
             SignColumn = { bg = "None" },
             Folded = { bg = "None" },
             FoldColumn = { bg = "None" },
             CursorLine = { bg = "None" },
             CursorColumn = { bg = "None" },
             VertSplit = { bg = "None" },
             LineNr = {fg = "#78808F", bg = "None"},
             Visual = { bg = "#254054" },
             },
        }
      )
      vim.cmd("colorscheme ayu-dark")
    end,
  }

}

return { themes[active_theme] }
