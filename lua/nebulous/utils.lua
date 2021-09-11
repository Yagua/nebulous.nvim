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
function utils.load_colorscheme(scheme)
  local color_tables = scheme or {}
  api.nvim_command("highlight clear")
  if vim.fn.exists("sintax_on") then api.nvim_command("syntax reset") end
  vim.opt.background = "dark"
  vim.g.colors_name = "nebulous"
  vim.g.nebulous = 1
  vim.opt.termguicolors = true

  --Load editor colors
  for group, color in pairs(color_tables) do
    utils.set_highlights(group, color)
  end
end

---Set custom options to the editor
--@param def_table table: default options table
--@parama opts table: custom options for editor
function utils.set_options(def_table, opts)
  if next(opts) == nil then return end

  --TODO: improve nonexistent option search
  for key, val in pairs(opts) do
    if def_table[key] == nil then
      print(string.format("[Nebulous]: The options '%s' does not exists", key))
    end

    if type(def_table[key]) == "table" then
      for k, v in pairs(val) do
        def_table[key][k] = v
      end
    else
      def_table[key] = val
    end
  end
end

return utils
