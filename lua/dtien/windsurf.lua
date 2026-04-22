vim.pack.add({
    "https://github.com/Exafunction/windsurf.vim",
})

vim.g.codeium_disable_bindings = 1

vim.keymap.set("i", "<Tab>", function()
    return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-;>", function()
    return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-,>", function()
    return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })

vim.keymap.set("i", "<C-x>", function()
    return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })
