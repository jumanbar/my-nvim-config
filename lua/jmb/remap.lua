-- OK
vim.g.mapleader = " "
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<C-a>", "ggVG") -- Select All
vim.keymap.set("n", "<leader>wd", vim.cmd.Ex) -- Working Directory

-- Move lines up and down with Shift
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ejemplo
vim.keymap.set("n", "J", "$mzJ`zl") -- Not sure about this one, really

-- Que el cursor esté en la mitad de la pantalla cuando se hace C-d, C-u, n o N:
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- CLIPBOARD ====
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+yy]])

-- Vim was right:
vim.keymap.set("n", "Y", [[yy]])

-- Format file:
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- Requiere working LSP...

-- Faster search & replace for the whole file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Searched term gets highlighted... until I press Escape:
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

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
