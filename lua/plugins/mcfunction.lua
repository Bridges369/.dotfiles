local options = {
  mcversion           = "1.16",
  mcEnableBuiltinIDs  = 1,
  mcEnableBuiltinJSON = 1,
  mcEnableMP          = 1,
  IllegalNames        = "all"
}

for k, v in pairs(options) do
  vim.g[k] = v
end
