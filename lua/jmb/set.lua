vim.scriptencoding = "utf-8"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
-- vim.opt.wrap = false
vim.opt.wrap = true
-- vim.opt.breakat = " \t;:,!?"
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.breakindentopt = { "shift:1" }
vim.opt.showbreak = "\\\\ "
-- If you don't specify the sbr option, any showbreak any characters put appended to the indentation. Removing sbr from the above example causes an effective indent of 4 characters; with that setting, if you just want to use showbreak without additional indentation, specify shift:0. 

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


-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Splits screen to see all instances of substituions being updated while I 
-- write the command:
vim.opt.inccommand = 'split'

-- Highlight line where the cursor is:
vim.opt.cursorline = true

-- Opciones para mostrar (ciertos) caracteres en blanco:
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Columna a la izquierda de los números de línea, indicando errores
vim.opt.signcolumn = 'yes'

--[[ Split view:
-- CTRL+W v      Split vertically
-- CTRL+W s      Split horizontally
-- CTRL+W CTRL+o Restore original split (or keep only current split?)
--]]

vim.opt.scrolloff = 10


