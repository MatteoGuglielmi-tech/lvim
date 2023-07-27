reload "user.plugins"
reload "user.options"
reload "user.keymaps"
reload "user.autocommands"
reload "user.lsp"
reload "user.smoothie"
reload "user.harpoon"
reload "user.cybu"
---@diagnostic disable-next-line: different-requires
reload "user.neotest"
reload "user.surround"
reload "user.bookmark"
---@diagnostic disable-next-line: different-requires
reload "user.todo-comments"
reload "user.jaq"
reload "user.fidget"
reload "user.lab"
reload "user.git"
reload "user.zen-mode"
reload "user.inlay-hints"
reload "user.telescope"
reload "user.bqf"
reload "user.dial"
reload "user.numb"
reload "user.treesitter"
reload "user.neogit"
reload "user.colorizer"
reload "user.lualine"
reload "user.scrollbar"
-- -- reload "user.zk"
reload "user.copilot"
reload "user.chatgpt"
reload "user.whichkey"
reload "user.neoai"

---@diagnostic disable-next-line: unused-local
local opts = { noremap = true, silent = true }
-- For the description on keymaps, I have a function getOptions(desc) which returns noremap=true, silent=true and desc=desc.
-- Then call: keymap(mode, keymap, command, getOptions("some randome desc")

---@diagnostic disable-next-line: unused-local
local keymap = vim.keymap.set
