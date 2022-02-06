local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- clear search highlighting
map('n', '<leader><space>', ':nohl<CR>', default_opts)

-- don't use arrow keys
map('', '<up>', '<nop>', { noremap = true })
map('', '<down>', '<nop>', { noremap = true })
map('', '<left>', '<nop>', { noremap = true })
map('', '<right>', '<nop>', { noremap = true })

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- open terminal
map('n', '<C-t>', ':Term<CR>', { noremap = true })

-- Vista tag-viewer
map('n', '<C-m>', ':Vista!!<CR>', default_opts)   -- open/close

-- Telescope
map('n', '<leader>ff', ":lua require('telescope').", default_opts)
map('n', '<leader>ff', "<cmd>Telescope find_files<cr>", default_opts)
map('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", default_opts)
map('n', '<leader>gb', "<cmd>lua require('telescope.builtin').git_branches()<cr>", default_opts)
map('n', '<leader>gf', "<cmd>lua require('telescope.builtin').git_bcommits()<cr>", default_opts)
map('n', '<leader>fr', "<cmd>lua require('telescope.builtin').grep_string()<cr>", default_opts)
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", default_opts)
map('n', '<leader>fs', "<cmd>lua require('telescope.builtin').search_history()<cr>", default_opts)
map('n', '<leader>fc', "<cmd>lua require('telescope.builtin').command_history()<cr>", default_opts)
map('n', '<leader>fj', "<cmd>lua require('telescope.builtin').file_browser()<cr>", default_opts)

vim.cmd [[
  nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr>
  nnoremap gr <cmd>lua vim.lsp.buf.references()<cr>
  nnoremap gh <cmd>lua vim.lsp.buf.hover()<cr>
  command -buffer -nargs=? LRename lua vim.lsp.buf.rename(<f-args>)

  " Amplify
  command AmplifyList split term://amplify env list | resize 12
  command AmplifyPull split term://amplify pull --yes | resize 12
  command AmplifyPush split term://amplify push --yes --codegen \"{\'generateCode\': false}\" | resize 12
]]
