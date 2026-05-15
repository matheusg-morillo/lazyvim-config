return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false, -- main branch does not support lazy-loading
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")
    ts.setup({})

    ts.install({
      -- essentials
      "lua",
      "vim",
      "vimdoc",
      "query",
      -- original ensure_installed (ts_ls dropped — it's an LSP, not a parser)
      "javascript",
      "typescript",
      "tsx",
      "python",
      "dart",
      "go",
      "gomod",
      "gowork",
      "yaml",
      "css",
      "scss",
      "html",
      "regex",
      "java",
      "rust",
      "json",
      "bash",
      "toml",
      "vue",
      "svelte",
      "graphql",
      "php",
      "ruby",
      "markdown",
      "markdown_inline",
      "ledger",
      -- from language extras
      "clojure",
    })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        local bufnr = args.buf
        local ft = vim.bo[bufnr].filetype
        local lang = vim.treesitter.language.get_lang(ft)
        if not lang then
          return
        end

        local ok = pcall(vim.treesitter.language.add, lang)
        if not ok then
          return
        end

        pcall(vim.treesitter.start, bufnr, lang)

        vim.wo[0][0].foldmethod = "expr"
        vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"

        vim.bo[bufnr].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

    vim.opt.foldenable = true
    vim.opt.foldlevel = 99
  end,
}
