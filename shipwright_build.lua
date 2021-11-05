local colorscheme = require "gitgud"
local palette = require "gitgud.palette"
local lushwright = require "shipwright.transform.lush"

local generate = "kitty"

local function get_term_colours(c)
  return {
    fg = c.white.hex,
    bg = c.bg.hex,
    cursor_fg = c.bg.hex,
    cursor_bg = c.white.hex,
    selection_fg = c.bg.hex,
    selection_bg = c.white.hex,
    black = c.bg.hex,
    red = c.red_dark.hex,
    green = c.green_dark.hex,
    yellow = c.yellow_dark.hex,
    blue = c.blue_dark.hex,
    magenta = c.purple_dark.hex,
    cyan = c.aqua_dark.hex,
    white = c.white.hex,
    bright_black = c.bg4.hex,
    bright_red = c.red.hex,
    bright_green = c.green.hex,
    bright_yellow = c.yellow.hex,
    bright_blue = c.blue.hex,
    bright_magenta = c.purple.hex,
    bright_cyan = c.aqua.hex,
    bright_white = c.white.hex,
  }
end

if generate == "vimscript" then
  run(
    colorscheme,
    lushwright.to_vimscript,
    { prepend, "set background=dark" },
    { prepend, 'let g:colors_name = "gitgud"' },
    { overwrite, "colors/gitgud.vim" })
elseif generate == "kitty" then
  run(
    palette,
    get_term_colours,
    contrib.kitty,
    { overwrite, "kitty/gitgud.conf" })
end
