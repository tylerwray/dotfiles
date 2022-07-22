local status_ok, _ = pcall(vim.cmd, "colorscheme sonokai")
if not status_ok then
  return
end
