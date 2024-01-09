return {
    "laytan/cloak.nvim",
    config = function()
        require("cloak").setup({
            enable = true,
            cloak_character = "*",
            -- The applied highlight group (colors) on the cloaking, see ``
            highlight_group = "Comment",
            patterns = {
                {
                    -- Match any file starting with ".env".
                    -- This can be a table to match multiple file patterns
                    file_pattern = {
                        ".env",
                    },
                    -- Match an equals sign and any characters after it.
                    -- This can also be a table of patterns to cloak,
                    -- example: cloak_pattern = { ":.+", "-.+" } for yaml file
                    cloak_pattern = "=.+"
                },
            },
        })
    end
}
