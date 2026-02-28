local map = vim.keymap.set
local opts = {noremap = true, silent = true}


-- blink.lua:
--<C-space> = show_documentation
--<C-k> = show_signature


-- leader 键
vim.g.mapleader = " " 

-- leader + s/v/q: 水平/垂直/关闭分屏
-- 分屏操作
map("n", "<leader><Left>", "<C-w>h", opts) -- 移动到左边窗口
map("n", "<leader><Down>", "<C-w>j", opts) -- 移动到下边窗口
map("n", "<leader><Up>", "<C-w>k", opts) -- 移动到上边窗口
map("n", "<leader><Right>", "<C-w>l", opts) -- 移动到右边窗口

map("n", "<C-s>", ":w<CR>", opts)


map("v", "<C-c>", [["+y]], opts)
map("n", "<C-c>", [["+yy]], opts)
map("v", "<C-x>", [["+d]], opts) 
map("n", "<C-x>", [["+dd]], opts) 
map("n", "<C-v>", [["+p]], opts)
map("v", "<C-v>", [["+p]], opts)
map("n", "<C-a>", "gg0vG$", opts)


-- 禁用hjkl
map({"n", "v"}, "h", "<Nop>", opts)
map({"n", "v"}, "j", "<Nop>", opts)
map({"n", "v"},"k", "<Nop>", opts)
map({"n", "v"},"l", "<Nop>", opts)

-- 清除查找高亮
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- 打开诊断窗口
map("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", opts)

map("v", "<Tab>", ">", opts)
map("v", "<S-Tab>", "<", opts)

-- neotree
map('n', '<leader>e', ':Neotree toggle<CR>', opts)

-- windowsieze
map('n', '<leader>i', '<cmd>resize +5<CR>', opts) 
map('n', '<leader>k', '<cmd>resize -5<CR>', opts)
map('n', '<leader>j', '<cmd>vertical resize -5<CR>', opts)
map('n', '<leader>l', '<cmd>vertical resize +5<CR>', opts)




-- terminal
-- map('n', '<leader>t', '<Cmd>belowright terminal fish<CR>i', opts)
-- 在终端模式中按 Esc 直接退出到普通模式
map("t", "<Esc>", [[<C-\><C-n>]], opts)

map(
  "n",
  "<leader>t",
  function()
    vim.cmd("botright 10split")
    vim.cmd("terminal fish")
    vim.cmd("startinsert")
  end,
  opts
)
map({'n'}, '<leader>q', '<cmd>close<CR>', opts)
