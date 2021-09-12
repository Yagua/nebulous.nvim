local colors = {}
local variants = {
  ["midnight"] = 1,
  ["twilight"] = 2,
  ["night"] = 3, --Default variant
}

---Select variant color and return it
--@param variant string: name of the selected color variant
--@return scheme table: editor elements with its respective colors
function colors.set_scheme(variant)
  local scheme = {}
  local variant_selected = variant or ""

  if variants[variant_selected] ~= nil then
    scheme = require(string.format("nebulous.colors.%s", variant_selected))
  else
    scheme = require("nebulous.colors.night")
    print(string.format(
      "[Nebulous]: The variant '%s' does not exists. Default variant was set.",
      variant_selected
    ))
  end
  scheme.none = "NONE"

  return scheme
end

return colors
