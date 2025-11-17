return {
    {
        'stevearc/conform.nvim',
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                yaml = { "prettier", "yamlfix", stop_after_first = false },
                javascript = { "eslint", "prettierd", "prettier", stop_after_first = false },
                typescript = { "eslint", "prettierd", "prettier", stop_after_first = false },
                go = { "goimports", "gofmt", lsp_format = "fallback" },
                rust = { "rustfmt", lsp_format = "fallback" },
                python = { "isort", "black", stop_after_first = false },
            },
            format_on_save = {
                timeout_ms = 800,
                lsp_format = "fallback",
            },
        },
    },
}
