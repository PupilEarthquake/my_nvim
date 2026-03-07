require("config.options")
require("config.keymaps")
require("config.lazy")

vim.o.shell = 'fish'
-- spell check
-- vim.opt.spell = true  (移步keymappings)
vim.opt.spelllang = { 'en_us', 'cjk' }

