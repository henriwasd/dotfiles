return {
  {
    "folke/tokyonight.nvim",
  config = function()
    vim.cmd("set background=dark")
    vim.g.tokyonight_style = "storm"
    require("tokyonight").colorscheme()
  end
  }
}
