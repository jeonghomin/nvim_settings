return {
  "ojroques/nvim-osc52",
  config = function()
    local osc52 = require("osc52")

    vim.keymap.set("v", "<leader>y", function()
      osc52.copy_visual()
      print("OSC52 visual copy")
    end, { desc = "OSC52 copy visual" })

    vim.keymap.set("v", "<leader>Y", "\"zy<Cmd>lua local t = vim.fn.getreg('z'); t = t:gsub('\\n', ' '):gsub('%s+', ' '):gsub('^%s*', ''):gsub('%s*$', ''); require('osc52').copy(t); print('OSC52 visual copy (no newline)')<CR>", { desc = "OSC52 copy visual (no newline)" })

    vim.keymap.set("n", "<leader>yy", function()
      local line = vim.api.nvim_get_current_line()
      osc52.copy(line)
      print("OSC52 line copy")
    end, { desc = "OSC52 copy line" })
  end,
}
