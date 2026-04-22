return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvim_tree = require("nvim-tree")
    local api = require("nvim-tree.api")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvim_tree.setup({
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
        update_root = true,
      },
    })

    -- tree toggle / focus
	vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>", { silent = true })
	vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>", { silent = true })
    -- window movement
    vim.keymap.set("n", "<c-h>", "<c-w>h", { silent = true })
    vim.keymap.set("n", "<c-l>", "<c-w>l", { silent = true })
    vim.keymap.set("n", "<c-j>", "<c-w>j", { silent = true })
    vim.keymap.set("n", "<c-k>", "<c-w>k", { silent = true })

    -- splits from tree
    vim.keymap.set("n", "<leader>v", function()
      api.node.open.vertical()
    end, { noremap = true, silent = true })

    vim.keymap.set("n", "<leader>s", function()
      api.node.open.horizontal()
    end, { noremap = true, silent = true })
  end,
}
