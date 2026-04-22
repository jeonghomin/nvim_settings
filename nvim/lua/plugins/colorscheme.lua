return {
  "nanotech/jellybeans.vim",
  lazy = false,
  priority = 1000, -- 🔥 중요 (가장 먼저 로드)
  config = function()
    vim.cmd.colorscheme("jellybeans")
  end,
}
