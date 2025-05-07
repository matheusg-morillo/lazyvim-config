return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true },
      panel = { enabled = true },
      filetypes = {
        markdown = false,
        help = false,
        clojure = false,
        ["*"] = true,
      },
    },
    config = function()
      require("copilot").setup()
    end,
  },
}
