local Colors = {}
local variant = vim.g.nb_style

---Variants selector
if  variant == "midnight" then
  Colors = require("nebulous.colors.midnight")
elseif variant == "twilight" then
  Colors = require("nebulous.colors.twilight")
else
  Colors = require("nebulous.colors.night") --Default schema
end

Colors.none = "NONE"

return Colors
