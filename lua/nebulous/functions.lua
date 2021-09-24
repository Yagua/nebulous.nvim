local M = {}
local utils = require("nebulous.utils")
local variants = require("nebulous.colors").variants
local g = vim.g

--- Returns the position of the variant that will be loaded.
--@param v_tab table: table of variants
--@parma pos number: a position to search in the table of variants
--@return position number: a valid position for setting a variant from the variant table
local function change_variant(v_tab, pos)
  if next(v_tab) == nil then return end
  local position = table.getn(v_tab) > pos and pos + 1 or 1
  return position
end

--- Sets a variant in accordance with a valid position
--@param position number: position to load a variant from the variant table
local function set_variant(position)
  local variant = variants[position]
  g.nebulous_variant_loaded = position
  print(string.format("[Nebulous]: '%s' set", variant))
  utils.setup_scheme { variant = variant }
end

--- Set a variant by scrolling through the variant table in an orderly fashion
function M.toggle_variant()
  local position = change_variant(
    variants, g.nebulous_variant_loaded
  )
  set_variant(position)
end

--- Set a random variant according to the number of entries in the variant table
function M.random_variant()
  local random = math.random(1, table.getn(variants))
  local position = change_variant(
    variants, random
  )
  set_variant(position)
end

return M
