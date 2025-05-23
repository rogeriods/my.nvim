-- Sync clipboard between OS and Neovim.
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- Highlight when yanking (copying) text.
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Runs before a buffer is written(saved).
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    command = ":%s/\\s\\+$//e",
})
