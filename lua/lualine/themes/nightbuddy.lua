local statusline = {}

local colors = {
  black        = '#0b1015',
  white        = '#CED5E5',
  red          = '#FB467B',
  green        = '#8CFE7C"',
  blue         = '#0BA8E2',
  yellow       = '#FFA244',
  gray         = '#828989',
  darkgray     = '#494646',
  lightgray    = '#4F5053',
  inactivegray = '#303F4A',
}

statusline.normal = {
  a = { bg = colors.gray,         fg = colors.black, gui = 'bold' },
  b = { bg = colors.inactivegray, fg = colors.white },
  c = { bg = colors.darkgray,     fg = colors.white }
}
statusline.insert = {
  a = { bg = colors.blue,         fg = colors.black, gui = 'bold' },
  b = { bg = colors.lightgray,    fg = colors.white },
  c = { bg = colors.inactivegray, fg = colors.white }
}
statusline.visual = {
  a = { bg = colors.yellow,       fg = colors.black, gui = 'bold' },
  b = { bg = colors.gray,         fg = colors.black },
  c = { bg = colors.inactivegray, fg = colors.white }
}
statusline.replace = {
  a = { bg = colors.red,          fg = colors.black, gui = 'bold' },
  b = { bg = colors.lightgray,    fg = colors.white },
  c = { bg = colors.inactivegray, fg = colors.white }
}
statusline.command = {
  a = { bg = colors.green,        fg = colors.black, gui = 'bold' },
  b = { bg = colors.lightgray,    fg = colors.white },
  c = { bg = colors.inactivegray, fg = colors.white }
}
statusline.inactive = {
  a = { bg = colors.darkgray,     fg = colors.gray, gui = 'bold' },
  b = { bg = colors.darkgray,     fg = colors.gray },
  c = { bg = colors.darkgray,     fg = colors.gray }
}

return statusline
