--[[

  Title:        nebulous.nvim
  Description:  Minimalist Collection of Colorschemes Written in Lua
  Author:       Yagua <yagua.db@gmail.com>
  Website:      https://github.com/Yagua/nebulous.nvim

--]]

local utils = require("nebulous.utils")
local nebulous = {}

---Setup function to load the colorscheme
--@param opts table: custom options to be applied to the editor
function nebulous.setup(opts)
  utils.setup_scheme(opts)
end

return nebulous
