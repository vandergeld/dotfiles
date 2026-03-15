local map = vim.keymap.set

-- Nvim-tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file tree" })

-- Barbar buffer navigation
map("n", "<A-,>", "<cmd>BufferPrevious<cr>", { desc = "Previous buffer" })
map("n", "<A-.>", "<cmd>BufferNext<cr>", { desc = "Next buffer" })
map("n", "<A-c>", "<cmd>BufferClose<cr>", { desc = "Close buffer" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
