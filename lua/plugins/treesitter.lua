return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" }, -- lazy-load to avoid bootstrap races
  build = ":TSUpdate",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    fold = { enable = true },
    ensure_installed = {
      "lua",
      "javascript",
      "python",
      "dart",
      "ts_ls",
      "go",
      "yaml",
      "css",
      "html",
      "regex",
      "java",
      "rust",
      "json",
      "jsonc",
      "bash",
      "toml",
      "tsx",
      "vue",
      "svelte",
      "graphql",
      "scss",
      "php",
      "ruby",
      "markdown",
    },
  },
  config = function()
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldenable = true
    vim.opt.foldlevel = 99
  end,
}
