return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add nightfox
  { "EdenEast/nightfox.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    -- priority = 1000,
    name = "cyberdream",
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        terminal_colors = true,
        borderless_telescope = true,
        theme = {
          variant = "auto",
        },
      })
    end,
  },
  { "folke/tokyonight.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "miversen33/sunglasses.nvim",
    event = "UIEnter",
    config = function()
      require("sunglasses").setup({
        filter_percent = 0.20,
      })
    end,
  },
}
