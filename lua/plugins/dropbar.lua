return {
  "Bekaboo/dropbar.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim"
  },
  opts = {
    icons = {
      ui = {
        bar = {
          separator = ' ',
          extends = '…',
        }
      }
    }
  }
}
