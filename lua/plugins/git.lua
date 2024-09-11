return
{
    {
        "lewis6991/gitsigns.nvim",
        config = function()

            -- setup gitsigns with default preperties
            require("gitsigns").setup({})

            -- Set a vim motion to <Space> + g + h to preview changes to the file under the cursor in normal mode
            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "[G]it Preview [H]unk" })

        end
    },
    {
        "tpope/vim-fugitive",
        config = function()
            -- Set a vim motion to <Space> + g + b to view the most recent contributers to the file
            vim.keymap.set("n", "<leader>gb", ":Git blame<cr>", { desc = "[G]it [B]lame" })
            -- Set a vim motion to <Space> + g + <Shift>A to all files change to the staging area
            vim.keymap.set("n", "<leader>gA", ":Git add .<cr>", { desc = "Git Add All" })
            -- Set a vim motion to <Space> + g + a to add the current file and changes to the staging area
            vim.keymap.set("n", "<leader>ga", "Git add", { desc = "Git Add" })
            -- Set a vim motoin to <Space> + g + c to commit the current changes
            vim.keymap.set("n", "<leader>gc", ":Git commit", { desc = "Git Commit" })
            -- Set a vim motoin to <Space> + g + p to push the commited changes to the remote repository
            vim.keymap.set("n", "<leader>gp", "Git push", { desc = "Git Push" })
        end
    }
}
