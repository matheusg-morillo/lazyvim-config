return {
  {
    "mason-org/mason.nvim", 
    version = "1.11.0",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "1.32.0",
    config = function()
      require("mason-lspconfig").setup({
        -- Automatically install these LSP servers (based on currently installed)
        ensure_installed = {
          "lua_ls",                    -- Lua (lua-language-server)
          "tailwindcss",               -- TailwindCSS (tailwindcss-language-server)
          "tsserver",                  -- TypeScript/JavaScript (typescript-language-server)
          "eslint",                    -- ESLint (eslint-lsp/vscode-eslint-language-server)
          "jsonls",                    -- JSON (json-lsp/vscode-json-language-server)
          "gopls",                     -- Go
          "clojure_lsp",               -- Clojure (clojure-lsp)
          "marksman",                  -- Markdown (marksman)
          -- Additional useful servers you might want:
          "html",                      -- HTML
          "cssls",                     -- CSS
          "rust_analyzer",             -- Rust
          "pyright",                   -- Python
        },
        -- Automatically install when entering a buffer with the filetype
        automatic_installation = true,
      })
    end,
  },
}
