require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column"
        }
    }
}
local builtin = require('telescope.builtin');

-- Find in git files:
vim.keymap.set('n', '<C-p>', builtin.git_files, {});

-- Find files:
vim.keymap.set('n', '<leader>ff', builtin.find_files, {});

-- Find with live grep:
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {});

-- Find in current buffers:
vim.keymap.set('n', '<leader>fb', builtin.buffers, {});

-- Find in help tags:
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {});

-- Find treesitter symbols in buffer:
vim.keymap.set('n', '<leader>fr', builtin.treesitter, {});

-- Find selected text in project:
vim.keymap.set('v', '<leader>fw', builtin.grep_string, {});

-- Find current word in project:
vim.keymap.set("n", "<leader>fw", function()
    local text = vim.fn.expand("<cword>")
    builtin.grep_string({ search = text, word_match = "-w" })
end)

-- Find current WORD in project:
vim.keymap.set("n", "<leader>fW", function()
    local text = vim.fn.expand("<cWORD>")
    builtin.grep_string({ search = text })
end)

--[[
search adn replace in all files
https://www.youtube.com/watch?v=Ofxlqz88pPA
]]


-- Lists available plugin/user commands and runs them on <cr>
vim.keymap.set("n", "<leader>P", builtin.commands, {});

-- Lists available plugin/user commands and runs them on <cr>
vim.keymap.set("n", "<leader>ch", builtin.command_history, {});
