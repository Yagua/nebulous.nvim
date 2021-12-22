local colors = require("nebulous.colors")
local nb_statusline = {}

nb_statusline.normal = {
  a = { bg = colors.Orange, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
  c = { bg = colors.Custom_1, fg = colors.White },
}

nb_statusline.insert = {
  a = { bg = colors.Magenta, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
}

nb_statusline.visual = {
  a = { bg = colors.Yellow, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
}

nb_statusline.replace = {
  a = { bg = colors.DarkRed, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
}

nb_statusline.command = {
  a = { bg = colors.Green, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
}

nb_statusline.inactive = {
  a = { bg = colors.Grey, fg = colors.White, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
  c = { bg = colors.Grey, fg = colors.White },
}

return nb_statusline
