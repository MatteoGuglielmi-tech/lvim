
local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup {
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_next = "<C-j>",
      jump_prev = "<C-k>",
      accept = "<C-a>",
      refresh = "r",
      open = "<M-CR>",
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4,
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<C-y>",
      accept_word = false,
      accept_line = false,
      next = "<C-j>",
      prev = "<C-k>",
      dismiss = "<C-e>",

    },
  },
}


-- local opts = { noremap = true, silent = true }
-- local keymap = vim.keymap.set
