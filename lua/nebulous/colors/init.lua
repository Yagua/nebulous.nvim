local Colors = {}

---Variants selector
if vim.g.nb_style  == "midnight" then
  Colors = require("nebulous.colors.midnight")
elseif vim.g.nb_style  == "twilight" then
  Colors = require("nebulous.colors.twilight")
else
  Colors = require("nebulous.colors.night") --Default schema
end

Colors.none = "NONE"

return Colors
