-----------------------------------------------------------------------------------------------------------
------------------------------------------ AI -------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["a"] = {
  name = "A.I.",
  a = { "<cmd>ChatGPTActAs<cr>", "Act As GPT" },
  c = { "<cmd>ChatGPT<cr>", "ChatGPT" },
  e = { "<cmd>ChatGPTEditWithInstructions<cr>", "Edit GPT" },
  p = { "<cmd>Copilot panel<cr>", "Toggle Copilot Panel" },
  r = { "<cmd>ChatRunCustomCodeAction<cr>", "Code Action GPT" },
  s = { "<cmd>Copilot suggestion<cr>", "Toggle Copilot Suggestion" },
  t = { "<cmd>Copilot toggle<cr>", "Toggle Copilot" },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------ BUFFERS --------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["b"] =
  { "<cmd>Telescope buffers<cr>", "Buffers" }
lvim.builtin.which_key.mappings["x"] = { "<cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["q"] =
  { '<cmd>lua require("user.functions").smart_quit()<CR>', "Quit" }

-----------------------------------------------------------------------------------------------------------
---------------------------------------- LINE MANAGEMENT --------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["/"] =
  { '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', "Comment" }
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  d = { '"_dd', "Delete line without yank" },
  w = {
    "<cmd>lua require('spectre').open_visual({select_word=true})<cr>",
    "Replace Word",
  },
  -- r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  -- f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------ DEBUG ----------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
  c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
  d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
  i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
  k = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
  o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
  O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
  r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
  l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
  u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
  x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------ FIND -----------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
  f = { "<cmd>Telescope find_files<cr>", "Find files" },
  h = { "<cmd>Telescope help_tags<cr>", "Help" },
  H = { "<cmd>Telescope highlights<cr>", "Highlights" },
  i = {
    "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>",
    "Media",
  },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  l = { "<cmd>Telescope resume<cr>", "Last Search" },
  M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  p = {
    "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
    "Colorscheme with Preview",
  },
  r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },
  s = { "<cmd>Telescope grep_string<cr>", "Find String" },
  t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------ GIT ------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  a = { ":Gwrite<CR>", "Git add" },
  b = { ":Gblame<CR>", "Git blame" },
  c = { ":Git commit<CR>", "Git commit" },
  d = { ":Gdiffsplit<CR>", "Git diff" },
  e = { ":GDelete<CR>", "Git delete" },
  g = { "<cmd>Neogit<cr>", "Neogit" },
  h = { ":GV<CR>", "Git history" },
  p = { ":Git pull<CR>", "Git pull" },
  r = { ":GV!<CR>", "Git history current file" },
  s = { ":G<CR>", "Git status" },
  u = { ":Git push<CR>", "Git push" },
  v = { ":Gvdiffsplit<CR>", "Git vdiff" },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------ LSP ------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["l"] = {
  name = "LSP",
  a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
  c = {
    "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<cr>",
    "Copilot Suggestion auto-trigger",
  },
  d = { "<cmd>TroubleToggle document_diagnostics<CR>", "Document diagnostics" }, -- document diagnostics from the builtin LSP client
  D = { "<cmd>TroubleToggle lsp_definitions<CR>", "Lsp Definitions" }, -- definitions of the word under the cursor
  h = { "<cmd>lua require('lsp-inlayhints').toggle()<cr>", "Toggle Hints" },
  H = { "<cmd>IlluminationToggle<cr>", "Toggle Doc HL" },
  i = { "<cmd>Telescope lsp_implementations<CR>", "Show Implementation" }, -- implementations of the word under the cursor
  I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
  l = { "<cmd>TroubleToggle lsp_type_definitions<CR>", "Lsp Type Definitions" }, -- type definitions of the word under the cursor
  n = { "<cmd>ToggleRefresh<CR>", "Refresh List" }, -- toggle auto loclist refresh
  r = { "<cmd>TroubleToggle lsp_references<CR>", "Lsp References" }, -- references of the word under the cursor
  R = { "<cmd>LspRestart<CR>", "LspRestart" },
  t = {
    '<cmd>lua require("user.functions").toggle_diagnostics()<cr>',
    "Toggle Diagnostics",
  },
  T = { "<cmd>TroubleToggle<CR>", "Open Trouble list" },
  v = { "<cmd>lua require('lsp_lines').toggle()<cr>", "Virtual Text" },
  w = {
    "<cmd>TroubleToggle workspace_diagnostics<CR>",
    "Workspace disagnostics",
  }, -- workspace diagnostics from the builtin LSP client
  W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------ MARKDOWN -------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["m"] = {
  name = "Markdown Preview",
  p = { "<cmd>MarkdownPreview<CR>", "Preview" },
  s = { "<cmd>MarkdownPreviewStop<CR>", "Stop" },
}

-----------------------------------------------------------------------------------------------------------
---------------------------------------------- NOTES ------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["n"] = {
  name = "Notes",
  c = { "<cmd>Telekasten show_calendar<cr>", "Calendar" },
  f = { "<cmd>Telekasten find_notes<cr>", "Find" },
  F = { "<cmd>Telekasten find_daily_notes<cr>", "Find Journal" },
  n = { "<cmd>Telekasten new_note<cr>", "Note" },
  j = { "<cmd>Telekasten goto_today<cr>", "Journal" },
  l = { "<cmd>TodoTrouble<CR>", "Todo Trouble" },
  L = { "<cmd>TodoLocList<CR>", "Todo Loclist" },
  p = { "<cmd>Telekasten panel<cr>", "Panel" },
  q = { "<cmd>TodoQuickFix<CR>", "Todo Quickfix" },
  t = { "<cmd>Telekasten toggle_todo<cr>", "Toggle Todo" },
  T = { "<cmd>TodoTelescope<CR>", "Todo Telescope" },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------------- IDE OPTIONS ---------------------------------------------
-- lvim.builtin.cmp.enabled = false
lvim.builtin.which_key.mappings["o"] = {
  name = "Options",
  c = { "<cmd>lua lvim.builtin.cmp.active = false<cr>", "Completion off" },
  C = { "<cmd>lua lvim.builtin.cmp.active = true<cr>", "Completion on" },
  r = {
    '<cmd>lua require("user.functions").toggle_option("relativenumber")<cr>',
    "Relative",
  },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------ PLUGINS --------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["p"] = {
  name = "Plugins",
  c = { "<cmd>Lazy clean<cr>", "Clean" },
  d = { "<cmd>Lazy debug<cr>", "Debug" },
  i = { "<cmd>Lazy install<cr>", "Install" },
  l = { "<cmd>Lazy log<cr>", "Log" },
  p = { "<cmd>Lazy profile<cr>", "Profile" },
  s = { "<cmd>Lazy sync<cr>", "Sync" },
  S = { "<cmd>Lazy clear<cr>", "Status" },
  u = { "<cmd>Lazy update<cr>", "Update" },
}

-----------------------------------------------------------------------------------------------------------
----------------------------------------- WINDOW SPLIT ----------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["s"] = {
  name = "Splits",
  e = { "<C-w>=", "Make splitted windows the same dimensions" },
  h = { "<C-w>s", "Split horizontally" },
  v = { "<C-w>v", "Split vertically" },
}

-----------------------------------------------------------------------------------------------------------
------------------------------------------- TABS ----------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
lvim.builtin.which_key.mappings["t"] = {
  name = "Tab",
  c = { "<cmd>tabclose<cr>", "Close Tab" },
  n = { "<cmd>tabnew %<cr>", "New Tab" },
  o = { "<cmd>tabonly<cr>", "Only Tab" },
  t = {
    "<cmd>lua require('telescope').extensions['telescope-tabs'].list_tabs(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Tabs'})<cr>",
    "Find Tab",
  },
}

-----------------------------------------------------------------------------------------------------------
----------------------------------------- UNUSED ----------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-- Comment lines to disable
--lvim.builtin.which_key.mappings[";"] = nil
--lvim.builtin.which_key.mappings["L"] = nil
lvim.builtin.which_key.mappings["c"] = nil
lvim.builtin.which_key.mappings["S"] = nil
lvim.builtin.which_key.mappings["w"] = nil
lvim.builtin.which_key.mappings["h"] = nil
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------

local m_opts = {
  mode = "n", -- NORMAL mode
  prefix = "m",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local m_mappings = {
  a = { "<cmd>silent BookmarkAnnotate<cr>", "Annotate" },
  c = { "<cmd>silent BookmarkClear<cr>", "Clear" },
  b = { "<cmd>silent BookmarkToggle<cr>", "Toggle" },
  m = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon" },
  ["."] = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
  [","] = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
  l = { "<cmd>lua require('user.bfs').open()<cr>", "Buffers" },
  j = { "<cmd>silent BookmarkNext<cr>", "Next" },
  s = { "<cmd>Telescope harpoon marks<cr>", "Search Files" },
  k = { "<cmd>silent BookmarkPrev<cr>", "Prev" },
  S = { "<cmd>silent BookmarkShowAll<cr>", "Prev" },
  -- s = {
  --   "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
  --   "Show",
  -- },
  x = { "<cmd>BookmarkClearAll<cr>", "Clear All" },
  [";"] = {
    '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>',
    "Harpoon UI",
  },
}

which_key.register(m_mappings, m_opts)
