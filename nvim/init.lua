require("user.keymaps")
require("user.options")

require("user.plugins")
require("user.conform")
require("user.lsp")
require("user.telescope")
require("user.treesitter")
require("user.which-key")

-- Start telescope by default
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if vim.fn.argv(0) == "" then
            require("telescope.builtin").find_files()
        end
    end,
})
