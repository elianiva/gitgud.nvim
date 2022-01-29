local lush = require "lush"
local base = require "gitgud.base"
local extends = lush.extends

local c = base.get_palette("light")
local spec = extends({ base.get_spec("light") }).with(function()
  return {
    NvimTreeNormal { fg = c.fg.da(5), bg = c.bg1 },
  }
end)

return lush(spec)

-- vi:nowrap
