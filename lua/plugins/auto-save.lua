return {
    {
        "brianhuster/autosave.nvim",
        event = { "InsertEnter", "InsertLeave", "TextChanged" },
        opts = {
            debounce_delay = 2000,
        }
    },
}
