local M = {}

---Get the value of secheme options
--@param opt string: name of the option
--@param value number|boolean: value of the option
--@returns number | boolean: value of the indexed option
local function options(opt, value)
  local nb_option = string.format("nb_%s", opt)
  if vim.g[nb_option] == nil then return value end
  if vim.g[nb_option] == 0 then return false end
  return vim.g[nb_option]
end

---Define default config
M.config = {
  variant = vim.g.nb_style,
  st_disable_bg = options("disable_background", false) and "NONE",
  st_comments  =  options("italic_comments", false)    and "italic" or "NONE",
  st_keywords  =  options("italic_keywords", false)    and "italic" or "NONE",
  st_functions =  options("italic_functions", false)   and "italic" or "NONE",
  st_variables =  options("italic_variables", false)   and "italic" or "NONE",
}

return M
