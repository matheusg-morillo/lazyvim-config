vim.o.background = "light"
return {
  { "EdenEast/nightfox.nvim" },
  { "folke/tokyonight.nvim" },
  { "scottmckendry/cyberdream.nvim" },
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
    "catppuccin/nvim",
    priority = 1000,
    opts = { flavour = "latte" },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
