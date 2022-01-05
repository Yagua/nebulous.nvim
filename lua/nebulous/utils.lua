local config = require("nebulous.config")
local theme = require("nebulous.scheme")
local color = require("nebulous.colors")

local api = vim.api
local utils = {}

---Apply colors in the editor
--@param group string: group name
--@param cols string: color name to be applied to the groups
local function set_highlights(group, cols)
  api.nvim_command(string.format('highlight %s gui=%s guifg=%s guibg=%s guisp=%s',
    group,
    cols.style or "NONE",
    cols.fg    or "NONE",
    cols.bg    or "NONE",
    cols.sp    or "NONE"
  ))

  if cols.link then
    api.nvim_command(string.format("highlight! link %s %s", group, cols.link))
  end
end

---Load colorscheme
--@param scheme table: editor elements with its colors
local function load_colorscheme(scheme)
  scheme = scheme or {}
  local overrides = scheme.overrides or {}

  api.nvim_command("highlight clear")
  if vim.fn.exists("sintax_on") then
    api.nvim_command("syntax reset")
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "nebulous"
  api.nvim_command("silent! colorscheme nebulous~" ..
    vim.g.nebulous_variant_loaded) -- reset blank colors during variant changeover

  if type(overrides) == "table" then
    if next(overrides) ~= nil then
      scheme = vim.tbl_deep_extend("force", {}, scheme, overrides)
    end
  end

  --Load editor colors
  for grp, col in pairs(scheme) do
    set_highlights(grp, col)
  end
end

--- Set and load the color scheme
--@param opts table: custom options to be applied to the editor
function utils.setup_scheme(opts)
  local usr_opts = config.set_user_options(opts)
  local scheme_opts = config.get_scheme_options(usr_opts)
  local scheme = color.get_scheme(usr_opts.variant)
  local colors = theme.load_colors(scheme, scheme_opts)
  colors.overrides = usr_opts.custom_colors

  load_colorscheme(colors)
end

return utils
