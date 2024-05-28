local status, gv = pcall(require, "gruvbox")
if ( not status ) then return end

gv.setup({
  italic = {
    comments = true,
    strings = false,
    folds = false,
  }
})
