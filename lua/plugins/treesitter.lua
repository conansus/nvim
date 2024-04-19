return {
  "nvim-treesitter/nvim-treesitter",
  config = function () 
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 
        "c",
        "lua", 
        "vim", 
        "vimdoc",
        "query",
        "php",
        "html",
        "css",
        "javascript",
        "json",
        "bash",
        "markdown",
        "gitignore",
        "python",
        "java",
        "matlab",
        "norg",
        "yaml",
        "sql",
        "markdown_inline"
      }, 
      autoinstall = true,
      highlight = {
        enable = true,
      }
    })  
  end
}
