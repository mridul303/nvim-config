
-- WSL clipboard support via clip.exe and powershell
vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -noprofile -command "Get-Clipboard"',
    ['*'] = 'powershell.exe -noprofile -command "Get-Clipboard"',
  },
  cache_enabled = 0,
}


