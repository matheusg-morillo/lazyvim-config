return {
  {
    dependencies = { "nvim-telescope/telescope.nvim" },
    "ThePrimeagen/git-worktree.nvim",
    keys = {
      { "<leader>wgs", "<cmd>Telescope git_worktree git_worktrees<cr>", desc = "Switch Git Worktree" },
      { "<leader>wgc", "<cmd>Telescope git_worktree create_worktree<cr>", desc = "Create Git Worktree" },
    },
    config = function()
      require("git-worktree").setup({})
      require("telescope").load_extension("git_worktree")
    end,
  },
}
