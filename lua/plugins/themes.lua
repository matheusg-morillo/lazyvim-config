vim.o.background = "light"

-- bufferline.nvim loads on the same VeryLazy event LazyVim uses to apply the
-- colorscheme, and sometimes wins the race, painting itself with stale
-- (dark) highlights. Reapplying the colorscheme one tick later runs after
-- bufferline has registered its ColorScheme refresh handler, fixing it.
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    vim.schedule(function()
      vim.cmd.colorscheme("catppuccin")
    end)
  end,
})

return {
  { "EdenEast/nightfox.nvim" },
  { "folke/tokyonight.nvim" },
  { "scottmckendry/cyberdream.nvim" },
  { "navarasu/onedark.nvim" },
  { "Mofiqul/dracula.nvim" },
  {
    "catppuccin/nvim",
    priority = 1000,
    opts = {
      flavour = "latte",
      integrations = {
        bufferline = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
