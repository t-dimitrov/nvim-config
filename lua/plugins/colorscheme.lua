return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },

    -- configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
}
