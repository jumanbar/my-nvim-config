vim.scriptencoding = "utf-8"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false

local home_var = "HOME"
if (vim.loop.os_uname().sysname ~= "Linux") then
    home_var = "HOMEPATH"
else
    vim.cmd [[ set clipboard+=unnamedplus ]]
end
vim.opt.undodir = os.getenv(home_var) .. "/.vim/undodir"

-- vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "80"
