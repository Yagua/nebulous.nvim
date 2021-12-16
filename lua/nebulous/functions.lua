local M = {}
local utils = require("nebulous.utils")
local variants = require("nebulous.colors").variants
local g = vim.g

--- Returns the position of the variant that will be loaded.
--@parma pos number: a position to search in the table of variants
--@return position number: a valid position for setting a variant from the variant table
local function change_variant(pos)
  if next(variants) == nil then return end
  local position = table.getn(variants) > pos and pos + 1 or 1
  return position
end

--- Sets a variant in accordance with a valid position in the variants table
--@param position number: position to load a variant from the variant table
local function load_variant(position)
  local variant = variants[position]
  vim.api.nvim_command(string.format("echo \"[Nebulous] '%s' set\"", variant))
  M.set_variant(variant)
end

---Set a especific variant
--@param scheme string: name of the variant to be set
function M.set_variant(scheme)
  if scheme == nil then return end
  utils.setup_scheme { variant = scheme }
end

--- Set a variant by scrolling through the variant table in an orderly fashion
function M.toggle_variant()
  local position = change_variant(g.nebulous_variant_loaded)
  load_variant(position)
end

--- Set a random variant according to the number of entries in the variant table
function M.random_variant()
  local random = math.random(1, table.getn(variants))
  local position = change_variant(random)
  load_variant(position)
end

--- Get colors of the given variant
--@param variant  string: name of the chosen variant
--@return table with the colors of the given variant
function M.get_colors(variant)
  variant = variant or ""

  if type(variant) == "string" then
    if string.len(vim.fn.trim(variant)) < 1 then
      variant = "night"
    end
  end

  local exists, scheme = pcall(require,
    string.format("nebulous.colors.%s", variant))

  if not exists then
    scheme = require("nebulous.colors.night")
  end

  scheme.none = "NONE"

  return scheme
end

return M
