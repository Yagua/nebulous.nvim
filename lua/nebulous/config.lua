local M = {}

---Default scheme options
local default_options = {
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

---Set custom options to the editor
--@param opts table: custom options for editor
function M.set_user_options(opts)
  opts = opts or {}
  local options = vim.tbl_deep_extend("force", {}, default_options, opts)
  return options
end

---Get the value of secheme options
--@param config table: custom options to be applied to the editor scheme
--@return settings table: settings adapted to load the scheme
function M.get_scheme_options(config)
  config = config or {}
  local settings = {} --TODO: improve options adaptation

  settings.st_eof = config.disable.endOfBuffer
  settings.term_colors = config.disable.terminal_colors
  settings.st_disable_bg = config.disable.background and "NONE"
  settings.st_comments = config.italic.comments and "italic" or "NONE"
  settings.st_keywords = config.italic.keywords and "italic" or "NONE"
  settings.st_functions = config.italic.functions and "italic" or "NONE"
  settings.st_variables = config.italic.variables and "italic" or "NONE"

  return settings
end

return M
