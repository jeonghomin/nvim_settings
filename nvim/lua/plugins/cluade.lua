return {
  "greggh/claude-code.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("claude-code").setup({
      -- claude 실행 파일의 절대 경로를 직접 지정
      command = "/home/mjh/.nvm/versions/node/v24.15.0/bin/claude"
    })
  end
}
