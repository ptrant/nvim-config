vim.g.mapleader = " "


vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)
vim.keymap.set("n", "<leader>bc", vim.cmd.bdelete)
vim.keymap.set("n", "<leader><Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<leader><S-Tab>", vim.cmd.bprevious)

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append following line with space
vim.keymap.set("n", "J", "mzJ`z")

-- make half-page scroll less disorienting
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search results in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without losing yanked stuff - conflicts with all the other p-commands
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- System clipboard (asbjornHaland)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete to void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- maybe later: C-c to Esc so vertical edit behaves the same with both
-- primeagen uses it, maybe I want it, maybe not
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- should open a fuzzy find for selecting a new dir, but no idea how it's supposed to work
-- vim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>")

-- quickfix list:
vim.keymap.set("n", "<M-k>", ":cprev<CR>zz")
-- doesn't work: vim.keymap.set("n", "<S-F6>", ":cprev<CR>zz")
vim.keymap.set("n", "<M-j>", ":cnext<CR>zz")
vim.keymap.set("n", "<F6>", ":cnext<CR>zz")

-- location list:
vim.keymap.set("n", "<leader>j", ":lnext<CR>zz")
vim.keymap.set("n", "<leader>k", ":lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make the current file executable
vim.keymap.set("n", "<leader>x", ":!chmod +x %<CR>", { silent = true })

-- Disable highlight when <leader><cr> is pressed
-- map <silent> <leader><cr> :noh<cr>

