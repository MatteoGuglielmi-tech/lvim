vim.g.gitblame_enabled = 0
vim.g.gitblame_message_template = "<summary> • <date> • <author>"
vim.g.gitblame_highlight_group = "LineNr"

lvim.builtin.gitsigns.opts.attach_to_untracked = false

vim.g.gist_open_browser_after_post = 1

local status_ok, gitlinker = pcall(require, "gitlinker")
if not status_ok then
  return
end

gitlinker.setup {
  opts = {
    callbacks = {
      ["git.comcast.com"] = require("gitlinker.hosts").get_github_type_url,
    },
    -- remote = 'github', -- force the use of a specific remote
    -- adds current line nr in the url for normal mode
    add_current_line_on_normal_mode = true,
    -- callback for what to do with the url
    action_callback = require("gitlinker.actions").open_in_browser,
    -- print the url after performing the action
    print_url = false,
    -- mapping to call url generation
    mappings = "<leader>gy",
  },
}

-- NOTE: git-conflict mappings
-- GitConflictChooseOurs — Select the current changes.
-- GitConflictChooseTheirs — Select the incoming changes.
-- GitConflictChooseBoth — Select both changes.
-- GitConflictChooseNone — Select none of the changes.
-- GitConflictNextConflict — Move to the next conflict.
-- GitConflictPrevConflict — Move to the previous conflict.
-- GitConflictListQf — Get all conflict to quickfix

local status_conflict_ok, git_conflict = pcall(require, "git-conflict")
if not status_conflict_ok then
  return
end

git_conflict.setup {
  default_mappings = false, -- disable buffer local mapping created by this plugin
  default_commands = true, -- disable commands created by this plugin
  disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
  highlights = { -- They must have background color, otherwise the default color will be used
    incoming = "DiffAdd",
    current = "DiffText",
  },
}

vim.keymap.set("n", "co", "<Plug>(git-conflict-ours)")
vim.keymap.set("n", "ct", "<Plug>(git-conflict-theirs)")
vim.keymap.set("n", "cb", "<Plug>(git-conflict-both)")
vim.keymap.set("n", "c0", "<Plug>(git-conflict-none)")
vim.keymap.set("n", "]x", "<Plug>(git-conflict-prev-conflict)")
vim.keymap.set("n", "[x", "<Plug>(git-conflict-next-conflict)")
