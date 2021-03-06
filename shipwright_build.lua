local dark = require "gitgud.dark"
local light = require "gitgud.light"
local palette = require "gitgud.palette"
local lushwright = require "shipwright.transform.lush"

local generate = "nvim"

local function get_term_colours(mode)
  local c = mode == "light" and palette.light or palette.dark

  return function()
    return {
      fg = c.fg.hex,
      bg = c.bg.hex,
      cursor_fg = c.bg.hex,
      cursor_bg = c.fg.hex,
      selection_fg = c.bg.hex,
      selection_bg = c.fg.hex,
      black = c.bg.hex,
      red = c.red_dark.hex,
      green = c.green_dark.hex,
      yellow = c.yellow_dark.hex,
      blue = c.blue_dark.hex,
      magenta = c.purple_dark.hex,
      cyan = c.aqua_dark.hex,
      white = c.fg.hex,
      bright_black = c.bg4.hex,
      bright_red = c.red.hex,
      bright_green = c.green.hex,
      bright_yellow = c.yellow.hex,
      bright_blue = c.blue.hex,
      bright_magenta = c.purple.hex,
      bright_cyan = c.aqua.hex,
      bright_white = c.fg.hex,
    }
  end
end

if generate == "nvim" then
  run(
    light,
    lushwright.to_vimscript,
    { prepend, "set background=light" },
    { prepend, 'let g:colors_name = "gitgud_light"' },
    { overwrite, "colors/gitgud_light.vim" })
  run(
    dark,
    lushwright.to_vimscript,
    { prepend, "set background=dark" },
    { prepend, 'let g:colors_name = "gitgud_dark"' },
    { overwrite, "colors/gitgud_dark.vim" })
elseif generate == "kitty" then
  run(
    palette,
    {branch,
      get_term_colours "dark",
      contrib.kitty,
      { overwrite, "kitty/gitgud-dark.conf" }},
    {branch,
      get_term_colours "light",
      contrib.kitty,
      { overwrite, "kitty/gitgud-light.conf" }})
end
