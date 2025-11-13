require("conform").setup({
    formatters_by_ft = {
        astro = { "prettier" },
        css = { "prettier" },
        elixir = { "mix" },
        html = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        python = { "black" },
        rust = { "rustfmt" },
        scss = { "prettier" },
        sql = { "sqlfmt" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        yaml = { "prettier" }
    },
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
})
