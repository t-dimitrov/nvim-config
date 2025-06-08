return {
    "folke/which-key.nvim",
    opts = {
        spec = {
            { "<leader>p", group = "Program" },
            { "<leader>pp", desc = "Configure Project" },
            { "<leader>pc", desc = "Compile Program" },
            { "<leader>pe", desc = "Execute Binary" },
            { "<leader>pr", desc = "Compile and Execute Program" },
            { "<leader>px", desc = "Configure, Compile and Execute Program" }
        }
    }
}
