-- local macchiato = require("catppuccin.palettes").get_palette "macchiato"
-- local macchiato = require("catppuccin.palettes").get_palette "mocha"

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    no_italic = true
})

-- Color =====

vim.cmd.colorscheme "catppuccin"
