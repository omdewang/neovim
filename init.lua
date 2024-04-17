local data_path = vim.fn.stdpath("data")
if data_path then
    local lazypath = data_path .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath,
        })
    end
    vim.opt.rtp:prepend(lazypath)
else
    print("Error: Neovim data path is nil")
end

require("vim-options")
require("lazy").setup("plugins")

