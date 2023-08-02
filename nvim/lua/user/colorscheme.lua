local status_ok, one_dark = pcall(require, "onedark")
if not status_ok then
  return
end

one_dark.setup()
