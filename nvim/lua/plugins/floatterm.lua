-- Floating terminal
return {
  {
    'voldikss/vim-floaterm',
    init = function()
    vim.g.floaterm_keymap_toggle = "<leader>ft"
	vim.g.floaterm_keymap_new    = "<leader>fn"
	vim.g.floaterm_keymap_prev   = "<leader>fp"
	vim.g.floaterm_keymap_next   = "<leader>fj"
    end,
    config = function()
		
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'python',
        callback = function()
          vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>:FloatermNew --autoclose=0 python3 %<CR>', { noremap = true, silent = true })
          vim.api.nvim_set_keymap('i', '<F5>', '<ESC>:w<CR>:FloatermNew --autoclose=0 python3 %<CR>', { noremap = true, silent = true })
          vim.api.nvim_set_keymap('n', '<leader>tr', ':w<CR>:FloatermNew --autoclose=0 python3 %<CR>', { noremap = true, silent = true })
        end
      })
    end
  },
}

