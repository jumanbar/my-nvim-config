local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "[A]dd file to harpoon nav file list" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Show list of harpoon nav files in floating window" })

vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end, { desc = "Go to harpoon nav file 1" })
vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end, { desc = "Go to harpoon nav file 2" })
vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end, { desc = "Go to harpoon nav file 3" })
vim.keymap.set("n", "<C-i>", function() ui.nav_file(4) end, { desc = "Go to harpoon nav file 4" })
