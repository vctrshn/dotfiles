-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night'
config.font = wezterm.font('Source Code Pro for Powerline')
config.line_height = 1.2

config.keys = {
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
    key = 'w',
    mods = 'CMD|SHIFT',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
  {
    key = 'p',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivateCommandPalette,
  },
  {
    key = ' ',
    mods = 'CMD|SHIFT',
    action = wezterm.action.QuickSelect,
  },
  {
    key = '-',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical,
  },
  {
    key = '|',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitHorizontal,
  },
  {
    key = 'h',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'l',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'k',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'j',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CMD',
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}

config.quick_select_patterns = {
  'D[0-9]+',
  'T[0-9]+',
}

return config
