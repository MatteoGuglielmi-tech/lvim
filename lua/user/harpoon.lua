local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local h_status_ok, _ = pcall(require, "harpoon")
if not h_status_ok then
  return
end

--local wk_ok, which_key = pcall(require, "which-key")
--if not wk_ok then
--  return
--end

--local opts = {
--  mode = "n", -- NORMAL mode
--  prefix = "<leader>",
--  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
--  silent = true, -- use `silent` when creating keymaps
--  noremap = true, -- use `noremap` when creating keymaps
--  nowait = true, -- use `nowait` when creating keymaps
--}

telescope.load_extension "harpoon"
--which_key.register(mappings, opts)
