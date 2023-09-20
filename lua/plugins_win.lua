
vim.cmd [[packadd packer.nvim ]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'
    use 'Mofiqul/vscode.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    })

    use 'theprimeagen/harpoon'

    use 'jumanbar/tocnavigator.nvim' -- My own toc plugin
    use { "catppuccin/nvim", as = "catppuccin" }
end)

