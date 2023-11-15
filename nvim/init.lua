-- Always first
require("user.plugins")

require("user.illuminate")
require("user.keymaps")
require("user.lsp")
require("user.conform")
require("user.options")
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
