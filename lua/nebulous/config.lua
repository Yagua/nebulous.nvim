local M = {}

---Default scheme options
M.scheme_options = {
  variant = "night",
  disable = {
    background = false,
    endOfBuffer = false,
    terminal_colors = false,
  },
  italic = {
    comments = false,
    keywords = false,
    functions = false,
    variables = false,
  },
  custom_colors = {},
}

local _user_config = {}

---Set custom options to the editor
--@param opts table: custom options for editor
function M.set_options(opts)
  opts = opts or {}
  local options = vim.tbl_deep_extend("force", {}, M.scheme_options, opts)
  _user_config = options
  return options
end

---Get the value of secheme options
--@param tab table: custom options to be applied to the editor scheme
--@return settings table: settings adapted to load the scheme
function M.get_options()
  local settings = {} --TODO: improve options adaptation

  settings.st_eof = _user_config.disable.endOfBuffer
  settings.term_colors = _user_config.disable.terminal_colors
  settings.st_disable_bg = _user_config.disable.background and "NONE"
  settings.st_comments = _user_config.italic.comments and "italic" or "NONE"
  settings.st_keywords = _user_config.italic.keywords and "italic" or "NONE"
  settings.st_functions = _user_config.italic.functions and "italic" or "NONE"
  settings.st_variables = _user_config.italic.variables and "italic" or "NONE"

  return settings
end

return M
