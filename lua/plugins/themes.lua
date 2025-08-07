return {
  -- add nightfox
  { "EdenEast/nightfox.nvim" },
  { "folke/tokyonight.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "miversen33/sunglasses.nvim",
    event = "UIEnter",
    config = function()
      require("sunglasses").setup({
        filter_percent = 0.10,
      })
    end,
  },
  { "Mofiqul/dracula.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
