vim.g.mapleader = " "

require("vim._core.ui2").enable({})
require("dtien.lsp")
require("dtien.snippets")
require("dtien.treesitter")
require("dtien.diffview")
require("dtien.windsurf")
require("dtien.fugitive")

vim.cmd([[packadd nvim.undotree]])
vim.keymap.set("n", "<leader>u", function()
    require("undotree").open({ command = "leftabove 40vnew" })
end)

vim.cmd("colorscheme one")
