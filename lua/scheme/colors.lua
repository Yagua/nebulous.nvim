local Colors = {}

if vim.g.nb_style  == "midnight" then
  --Light colors
  Colors.background  = "#010018"
  Colors.Red         = "#FE5D8B"
  Colors.Blue        = "#47B5D8"
  Colors.Green       = "#8CFE7C"
  Colors.Purple      = "#CB6CFE"
  Colors.Yellow      = "#FDB063"
  Colors.Orange      = "#58D6FF"
  Colors.Violet      = "#FA98FA"
  Colors.Magenta     = "#FB75EA"
  Colors.Pink        = "#FF94F8"
  Colors.White       = "#CED5E5"
  Colors.Cyan        = "#29CBA9"
  Colors.Aqua        = "#FAF13C"
  Colors.Black       = "#090825"
  Colors.Grey        = "#363B48"
  Colors.Grey_2      = "#111026"
  Colors.Grey_3      = "#303F4A"
  Colors.Custom_1    = "#252537"
  Colors.Custom_2    = "#AFFDF1"
  Colors.Custom_3    = "#E2E7E6"

  --Dark colors
  Colors.DarkRed     = "#FD2E6A"
  Colors.DarkOrange  = "#FFA244"
  Colors.DarkBlue    = "#007ED3"
  Colors.DarkGreen   = "#46BF45"
  Colors.DarkYellow  = "#FFCC00"
  Colors.DarkMagenta = "#FE92E1"
  Colors.DarkCyan    = "#FB9631"
  Colors.DarkGrey    = "#5E5E5E"
  Colors.DarkGrey_2  = "#828989"

elseif vim.g.nb_style  == "twilight" then
  --Light colors
  Colors.background  = "#010018"
  Colors.Red         = "#FE5D8B"
  Colors.Blue        = "#47B5D8"
  Colors.Green       = "#8CFE7C"
  Colors.Purple      = "#CB6CFE"
  Colors.Yellow      = "#FDB063"
  Colors.Orange      = "#58D6FF"
  Colors.Violet      = "#FA98FA"
  Colors.Magenta     = "#FB75EA"
  Colors.Pink        = "#FF94F8"
  Colors.White       = "#CED5E5"
  Colors.Cyan        = "#29CBA9"
  Colors.Aqua        = "#FAF13C"
  Colors.Black       = "#090825"
  Colors.Grey        = "#363B48"
  Colors.Grey_2      = "#111026"
  Colors.Grey_3      = "#303F4A"
  Colors.Custom_1    = "#252537"
  Colors.Custom_2    = "#AFFDF1"
  Colors.Custom_3    = "#E2E7E6"

  --Dark colors
  Colors.DarkRed     = "#FD2E6A"
  Colors.DarkOrange  = "#FFA244"
  Colors.DarkBlue    = "#007ED3"
  Colors.DarkGreen   = "#46BF45"
  Colors.DarkYellow  = "#FFCC00"
  Colors.DarkMagenta = "#FE92E1"
  Colors.DarkCyan    = "#FB9631"
  Colors.DarkGrey    = "#5E5E5E"
  Colors.DarkGrey_2  = "#828989"

else --Default schema
  --Light colors
  Colors.background  = "#0b1015"
  Colors.Red         = "#FB467B"
  Colors.Blue        = "#0BA8E2"
  Colors.Green       = "#B8EE92"
  Colors.Purple      = "#ff8d03"
  Colors.Yellow      = "#975EEC"
  Colors.Orange      = "#FFCC00"
  Colors.Violet      = "#F281F2"
  Colors.Magenta     = "#F95CE6"
  Colors.Pink        = "#DB73DA"
  Colors.White       = "#CED5E5"
  Colors.Cyan        = "#80a0ff"
  Colors.Aqua        = "#00D5A7"
  Colors.Black       = "#0b1015"
  Colors.Grey        = "#494646"
  Colors.Grey_2      = "#13191F"
  Colors.Grey_3      = "#435968"
  Colors.Custom_1    = "#3b4048"
  Colors.Custom_2    = "#AFFDF1"
  Colors.Custom_3    = "#E2E7E6"

  --Dark colors
  Colors.DarkRed     = "#FD2E6A"
  Colors.DarkOrange  = "#ff8d03"
  Colors.DarkBlue    = "#007ED3"
  Colors.DarkGreen   = "#5EB95D"
  Colors.DarkYellow  = "#FFCC00"
  Colors.DarkMagenta = "#FE92E1"
  Colors.DarkCyan    = "#56D6D6"
  Colors.DarkGrey    = "#555555"
  Colors.DarkGrey_2  = "#828989"

end

Colors.none = "NONE"

return Colors
