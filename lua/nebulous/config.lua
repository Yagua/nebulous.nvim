local M = {}

---Obtain the value of the past options
--@param opt string: name of the option
--@param value number|boolean: value of the option
local function options(opt, value)
  local option = string.format("nb_%s", opt)
  if vim.g[option] == nil then return value end
  if vim.g[option] == 0 then return false end
  return vim.g[option]
end

---Default options
M.conf = {
  st_comments  = options("italic_comments", false)  and "italic" or "NONE",
  st_keywords  = options("italic_keywords", false)  and "italic" or "NONE",
  st_functions = options("italic_functions", false) and "italic" or "NONE",
  st_variables = options("italic_variables", false) and "italic" or "NONE"
}

return M
