local status,osaka = pcall(require,"solarized-osaka")
if not status then print("solarized-osaka not loaded") end

require("solarized-osaka").setup({
  transparent=false,
  styles = {
    keywords = { italic = false }
  }
})
