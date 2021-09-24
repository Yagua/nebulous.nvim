--[[

  Title:        Nebulous.nvim
  Description:  Minimalist Collection of Colorschemes Written in Lua
  Author:       Yagua <yagua.db@gmail.com>
  Website:      https://github.com/Yagua/nebulous.nvim

--]]

local utils = require("nebulous.utils")
local functions = require("nebulous.functions")
local nebulous = {}

---Setup function to load the colorscheme
--@param opts table: custom options to be applied to the editor
function nebulous.setup(opts)
  utils.setup_scheme(opts)
end

nebulous.toggle_variant = functions.toggle_variant
nebulous.random_variant = functions.random_variant

return nebulous
