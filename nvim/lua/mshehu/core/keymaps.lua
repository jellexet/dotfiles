vim.g.mapleader = " " -- sets <leader> to a whitespace

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk"}) -- "jk" in insert mode

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights"}) -- "space" + "nh"

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number"}) -- "space" + "+"
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number"}) -- "space" + "-"

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically"}) -- "space" + "sv"
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split windw horizontally"}) -- "space" + "sh"
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split equal size"}) -- "space" + "se"
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split"}) -- "space" + "sx"

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab"}) -- "space" + "to"
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab"}) -- "space" + "tc"
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab"}) -- "space" + "tn"
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab"}) -- "space" + "tp"
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab"}) -- "space" + "tf"
