local ls = require("luasnip")
local cmp = require("cmp")
vim.keymap.set({ "i" }, "<C-H>", function()
    ls.expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function(fallback)
    if cmp.visible() then
        cmp.select_next_item()
    elseif ls.locally_jumpable(1) then
        ls.jump(1)
    else
        fallback()
    end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-K>", function(fallback)
    if cmp.visible() then
        cmp.select_prev_item()
    elseif ls.locally_jumpable(-1) then
        ls.jump(-1)
    else
        fallback()
    end
end, { silent = true })

-- vim.keymap.set({ "i", "s" }, "<C-E>", function()
--     if ls.choice_active() then
--         ls.change_choice(1)
--     end
-- end, { silent = true })
