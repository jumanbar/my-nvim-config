local builtin = require('telescope.builtin');

vim.keymap.set('n', '<C-p>',      builtin.git_files, {});

vim.keymap.set('n', '<leader>ff', builtin.find_files, {});
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {});
vim.keymap.set('n', '<leader>fb', builtin.buffers, {});
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {});
vim.keymap.set('n', '<leader>fr', builtin.treesitter, {});

vim.keymap.set('v', '<leader>gs', builtin.grep_string, {});
vim.keymap.set("n", "<leader>gs", function()
    local text = vim.fn.expand("<cword>")
    builtin.grep_string({ search = text })
end)
vim.keymap.set("n", "<leader>gS", function()
    local text = vim.fn.expand("<cWORD>")
    builtin.grep_string({ search = text })
end)
