return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = { enable = true },
            ident = { enable = true },
            autotag = { enable = true },
            ensure_installed = {
                "rust",
                "go",
                "typescript",
                "javascript",
                "odin",
                "zig",
                "sql",
                "markdown",
                "markdown_inline",
                "make",
            },
            auto_install = false
        })
    end
}
