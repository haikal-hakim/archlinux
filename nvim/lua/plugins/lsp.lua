return {
  {
    "elkowar/yuck.vim",
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        qmlls = {
          on_attach = function(client)
            client.server_capabilities.semanticTokensProvider = nil
          end,
        },
      },
    },
  },
}
