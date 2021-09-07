local colors = {}

---Variants selector
function colors.set_scheme(variant)
  local scheme = {}
  if  variant == "midnight" then
    scheme = require("nebulous.colors.midnight")
  elseif variant == "twilight" then
    scheme = require("nebulous.colors.twilight")
  else
    scheme = require("nebulous.colors.night") --Default schema
  end

  scheme.none = "NONE"

  return scheme
end

return colors
