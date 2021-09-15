local utils = {}
local api = vim.api

---Apply colors in the editor
--@param group string: group name
--@param color string: color name to be applied to the groups
function utils.set_highlights(group, color)
  api.nvim_command(string.format('highlight %s gui=%s guifg=%s guibg=%s guisp=%s',
    group,
    color.style or "NONE",
    color.fg    or "NONE",
    color.bg    or "NONE",
    color.sp    or "NONE"
  ))

  if color.link then
    api.nvim_command(string.format("highlight! link %s %s", group, color.link))
  end
end

---Load colorscheme
--@param scheme table: editor elements with its colors
--@param custom_tab table: custom color table
function utils.load_colorscheme(scheme, custom_tab)
  local color_table = scheme or {}
  local custom_colors = custom_tab or {}

  api.nvim_command("highlight clear")
  if vim.fn.exists("sintax_on") then api.nvim_command("syntax reset") end
  vim.opt.background = "dark"
  vim.g.colors_name = "nebulous"
  vim.g.nebulous = 1
  vim.opt.termguicolors = true

  if type(custom_colors) == "table" then
    if next(custom_colors) ~= nil then
      color_table = vim.tbl_deep_extend("force", {}, color_table, custom_colors)
    end
  end

  --Load editor colors
  for group, color in pairs(color_table) do
    utils.set_highlights(group, color)
  end

end

return utils
