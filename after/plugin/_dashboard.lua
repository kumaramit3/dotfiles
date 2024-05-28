local status, db = pcall(require, "dashboard")
if (not status)
  then print("dashboard not found") 
  return
end

db.setup({
  theme = 'hyper',
  config = {
    week_header = {
      enable=true
    },
    shortcut = {
      {
        desc = '󰊳 Update', group="DashboardShortcut", action="PackerUpdate", key="u"
      },
      {
        desc = ' Files', group="Label", action = 'Telescope find_files', key = 'f',
      },
      {
        desc = ' dotfiles', group="Number", action = "cd ~/.config/nvim | Telescope find_files", key = 'd',
      }
    }
  }
})
