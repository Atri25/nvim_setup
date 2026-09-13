return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- Shows open buffers as tabs
          diagnostics = "nvim_lsp", -- Shows LSP errors/warnings on the tabs
          always_show_bufferline = true,
        }
      })
    end
  }
}
