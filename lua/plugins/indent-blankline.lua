return{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      vim.api.nvim_set_hl(0, "IblCustomChar", { fg = "#3b4252", nocombine = true })
      require("ibl").setup(
        {
          indent = {highlight = "IblCustomChar"},
        }
      )
    end,
}
