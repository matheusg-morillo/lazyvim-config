return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "clojure",
        "lua",
        "javascript",
        "python",
        "dart",
        "typescript",
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
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      fold = {
        enable = true,
      },
    })

    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldenable = true
    vim.opt.foldlevel = 99
  end,
}
