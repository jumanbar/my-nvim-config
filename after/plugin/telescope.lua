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
local builtin = require("telescope.builtin");

-- Find in git files:
vim.keymap.set("n", "<C-p>", builtin.git_files, {});

-- Find files:
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" });

-- Find with live grep:
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" });

-- Find in current buffers:
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind in current [B]uffers" });

-- Find in help tags:
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp tags" });

-- Find treesitter symbols in buffer:
vim.keymap.set("n", "<leader>ft", builtin.treesitter, { desc = "[F]ind [T]reesitter symbols in buffer" });

-- Find selected text in project:
vim.keymap.set("v", "<leader>fs", builtin.grep_string, { desc = "[F]ind [S]elected text in project" });

-- Find current word in project:
vim.keymap.set("n", "<leader>fw", function()
    local text = vim.fn.expand("<cword>")
    builtin.grep_string({ search = text, word_match = "-w" })
end, { desc = "[F]ind [w]ord" })

-- Find current WORD in project:
vim.keymap.set("n", "<leader>fW", function()
    local text = vim.fn.expand("<cWORD>")
    builtin.grep_string({ search = text })
end, { desc = "[F]ind [W]ORD" })

--[[
search and replace in all files
https://www.youtube.com/watch?v=Ofxlqz88pPA
]]


-- Lists available plugin/user commands and runs them on <cr>
vim.keymap.set("n", "<leader>P", builtin.commands, { desc = "Command [P]alette" });

-- Lists available plugin/user commands and runs them on <cr>
vim.keymap.set("n", "<leader>ch", builtin.command_history, { desc = "[C]ommand [H]istory" });

-- Search telescope functions
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>km", builtin.keymaps, { desc = "Registered [K]ey [M]aps" })

