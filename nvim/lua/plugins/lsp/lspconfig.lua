return {

  "neovim/nvim-lspconfig",

  event = { "BufReadPre", "BufNewFile" },

  dependencies = {

    "hrsh7th/cmp-nvim-lsp",

  },

  config = function()

    -- lspconfig 모듈을 가져옵니다.

    local lspconfig = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").default_capabilities()



    -- 1. Pyright 설정

    lspconfig.pyright.setup({

      capabilities = capabilities,

    })



    -- 2. Lua_ls 설정

    lspconfig.lua_ls.setup({

      capabilities = capabilities,

      settings = {

        Lua = {

          diagnostics = {

            globals = { "vim" },

          },

          workspace = {

            checkThirdParty = false,

          },

        },

      },

    })



    -- 3. Bashls 설정

    lspconfig.bashls.setup({

      capabilities = capabilities,

    })

  end,

}
