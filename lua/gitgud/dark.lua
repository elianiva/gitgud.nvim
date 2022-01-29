local lush = require "lush"
local base = require "gitgud.base"
local extends = lush.extends

local spec = extends({ base.get_spec("dark") }).with(function()
  return {}
end)

return lush(spec)

-- vi:nowrap
