local status, onedark = pcall(require, "onedarkpro")
if (not status) then return end

onedark.setup({
  options = {
    transparency = true,
  }
})
