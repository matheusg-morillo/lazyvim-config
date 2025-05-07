return {
  "pwntester/octo.nvim",
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    -- OR 'ibhagwan/fzf-lua',
    "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("octo").setup({ enable_builtin = true })
    vim.cmd([[hi OctoEditable guibg=none]])
  end,
  keys = {
    { "<leader>O", "<cmd>Octo<cr>", desc = "Octo" },
  },
}
