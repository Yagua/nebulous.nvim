local scheme = require("nightbuddy")
local utils = {}
local base_colors = scheme.load_syntax()
local plugin_colors = scheme.load_plugins()
local api = vim.api

---Apply colors
--@param group string: group of colors
--@param color string:
function utils.apply_highlights(group, color)
  local foreground = color.fg    and "guifg=" .. color.fg    or "guifg=NONE"
  local background = color.bg    and "guibg=" .. color.bg    or "guibg=NONE"
  local style      = color.style and "gui="   .. color.style or "gui=NONE"
  local special    = color.sp    and "guisp=" .. color.sp    or ""

  if color.link then
    api.nvim_command("highlight! link " .. group .. " " .. color.link)
  end

  api.nvim_command(string.format("highlight %s %s %s %s %s",
    group, style, foreground, background, special
  ))

end

-- Load editor colors
for g, c in pairs(base_colors) do
  utils.apply_highlights(g, c)
end

-- Load plugin colors
for g, c in pairs(plugin_colors) do
  utils.apply_highlights(g, c)
end

-- Load terminal colors
scheme.colors_terminal()


return utils
