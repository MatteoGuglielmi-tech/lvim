--------- EDITOR SETTINGS ---------
local lua_opts = {
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- insert 2 spaces for a tab
}

for k, v in pairs(lua_opts) do
  vim.opt[k] = v
end
