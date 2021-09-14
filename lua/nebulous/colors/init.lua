local colors = {}
local variants = {
  [1] = "midnight",
  [2] = "twilight",
  [3] = "night",
  [4] = "fullmoon",
}

---Check for the existence of a variant in the variant table
--@param val string: variant to search for
--@return exists boolean: boolean value with the search response
local function variant_exists(val)
  local variant = val or ""
  local exists = vim.fn.index(variants, variant) >= 0 and true or false
  return exists
end

---Select variant color and return it
--@param variant string: name of the selected color variant
--@return scheme table: editor elements with its respective colors
function colors.set_scheme(variant)
  local scheme = {}
  local variant_selected = variant or ""

  if variant_exists(variant_selected) then
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
