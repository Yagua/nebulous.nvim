local M = {}

---Get the value of secheme options
--@param tab table: custom options to be applied to the editor scheme
--@returns settings table: settings adapted to load the scheme
function M.options(tab)
  local opts = tab or {}
  local settings = {} --TODO: improve options adaptation

  settings.st_disable_bg = opts.disable_background        and "NONE"
  settings.st_comments   = opts.italic_elements.comments  and "italic" or "NONE"
  settings.st_keywords   = opts.italic_elements.keywords  and "italic" or "NONE"
  settings.st_functions  = opts.italic_elements.functions and "italic" or "NONE"
  settings.st_variables  = opts.italic_elements.variables and "italic" or "NONE"

  return settings
end

return M
