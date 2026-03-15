return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "lua", "php", "javascript", "typescript", "gdscript", "godot_resource",
        "html", "css", "json", "bash", "markdown", "vim", "vimdoc",
      },
    })
  end,
}
