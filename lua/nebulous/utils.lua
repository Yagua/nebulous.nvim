local scheme = require("nebulous.scheme")
local utils = {}
local api = vim.api
local color_tables = { 
  scheme.load_editor(),
  scheme.load_plugins(),
  scheme.load_langs(),
}

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
function utils.load_colorscheme()
  api.nvim_command("highlight clear")
  if vim.fn.exists("sintax_on") then api.nvim_command("syntax reset") end
  vim.g.colors_name = "nebulous"
  vim.o.background = "dark"
  vim.o.termguicolors = true

  -- Load terminal colors
  scheme.colors_terminal()
  -- Load editor colors
  for _, c_table in pairs(color_tables) do
    for group, color in pairs(c_table) do
      utils.set_highlights(group, color)
    end
  end
end

return utils
