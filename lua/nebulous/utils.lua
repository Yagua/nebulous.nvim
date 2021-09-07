local utils = {}
local api = vim.api

---Apply colors in the editor
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
function utils.load_colorscheme(tab)
  local color_tables = tab or {}
  api.nvim_command("highlight clear")
  if vim.fn.exists("sintax_on") then api.nvim_command("syntax reset") end
  vim.g.colors_name = "nebulous"
  vim.o.background = "dark"
  vim.o.termguicolors = true

  -- Load editor colors
  for group, color in pairs(color_tables) do
    utils.set_highlights(group, color)
  end
end

function utils.set_options(def_table, opts)
  if next(opts) == nil then return end

  for key, val in pairs(opts) do
    if def_table[key] == nil then
      error(string.format("[Nebulous]: The options %s doesn't exists", key))
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
