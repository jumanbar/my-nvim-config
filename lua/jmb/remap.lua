vim.g.mapleader = " "
vim.keymap.set("n", "j", "gj", { desc = "Moving up and down in wrapped lines" })
vim.keymap.set("n", "k", "gk", { desc = "Moving up and down in wrapped lines" })
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select All" }) -- Select All
vim.keymap.set("n", "<leader>wd", vim.cmd.Ex, { desc = "Go to [W]orking [D]irectory" }) -- Working Directory

-- Move lines up and down with Visual mode then Shift + <kj>
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines up and down with Visual mode then Shift + <kj> " })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up and down with Visual mode then Shift + <kj> " })


vim.keymap.set("n", "J", "$mzJ`zl", { desc = "JOIN LINE, but moving curosr to end of original line first" }) -- Not sure about this one, really

-- Que el cursor esté en la mitad de la pantalla cuando se hace C-d, C-u, n o N:
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Cursor in the middle of screen when using CTRL+u" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Cursor in the middle of screen when using CTRL+d" })
vim.keymap.set("n", "<C-f>", "<C-f>zz", { desc = "Cursor in the middle of screen when using CTRL+f" })
vim.keymap.set("n", "<C-b>", "<C-b>zz", { desc = "Cursor in the middle of screen when using CTRL+b" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Cursor in the middle of screen when using n" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Cursor in the middle of screen when using N" })

-- CLIPBOARD ====
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]], { desc = "Cliboard" })
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Cliboard" })
vim.keymap.set("n", "<leader>Y", [["+yy]], { desc = "Yank whole line to clipboard" })

-- Vim was right:
vim.keymap.set("n", "Y", [[yy]], { desc = "Yank whole line with Y" })

-- Format file:
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat file" }) -- Requiere working LSP...

-- Faster search & replace for the whole file
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Quick [S]earch and replace" })

-- Diagnostics:
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Searched term gets highlighted... until I press Escape:
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Stop highlight after search" })


-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See :h vim.highlight.on_yank()
--  What is "yap": https://stackoverflow.com/a/4533586/1030523
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
