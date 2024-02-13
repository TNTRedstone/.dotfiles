return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- vim.keymap.set("n", "<C-l>", "<cmd>Neotree toggle<CR>", { noremap = true })
        require("neo-tree").setup({
            hijack_netrw_behavior = "open_current",
        })
    end,
}
