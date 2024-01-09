local local_plugins = {
    {
        "harpoon",
        dir = "~/projects/personal/harpoon",
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()
            -- local mark = require("harpoon.mark")
            -- local ui = require("harpoon.ui")

            -- vim.keymap.set("n", "<leader>a", mark.add_file)
            -- vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
            vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
            vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
            vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
            vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
        end
    },
    {
        "vim-apm",
        dir = "~/projects/personal/vim-apm"
    },
}

return local_plugins
    
