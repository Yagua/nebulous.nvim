local colors = require("nebulous.functions").get_current_colors()
local nebulous = {}

nebulous.normal = {
  a = { bg = colors.Orange, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
  c = { bg = colors.Custom_1, fg = colors.White },
}

nebulous.insert = {
  a = { bg = colors.Magenta, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
}

nebulous.visual = {
  a = { bg = colors.Yellow, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
}

nebulous.replace = {
  a = { bg = colors.DarkRed, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
}

nebulous.command = {
  a = { bg = colors.Green, fg = colors.Black, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
}

nebulous.inactive = {
  a = { bg = colors.Grey, fg = colors.White, gui = "bold" },
  b = { bg = colors.Grey, fg = colors.White },
  c = { bg = colors.Grey, fg = colors.White },
}

return nebulous
