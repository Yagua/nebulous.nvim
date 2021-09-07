--[[

    ****     **           **                **
   /**/**   /**          /**               /**
   /**//**  /**   *****  /**       **   **  /**   ******   **   **   ******
   /** //** /**  **///** /******  /**  /**  /**  **////** /**  /**  **////
   /**  //**/** /******* /**///** /**  /**  /** /**   /** /**  /** //*****
   /**   //**** /**////  /**  /** /**  /**  /** /**   /** /**  /**  /////**
   /**    //*** //****** /******  //******  *** //******  //******  ******
   //      ///   //////  /////     //////  ///   //////    //////  //////

  -- Description:  Minimalist Collection of Colorschemes Written in Lua
  -- Author:       Yagua <yagua.db@gmail.com>
  -- Website:      https://github.com/Yagua/nebulous.nvim

--]]

local utils = require("nebulous.utils")
local theme = require("nebulous.scheme")
local color = require("nebulous.colors")
local nebulous = {}

---Default scheme options
local scheme_options = {
  variant = "night",
  disable_bg = false,
  italic_elements = {
    comments   = false,
    keywords   = false,
    functions  = false,
    variables  = false,
  }
}

---Setup function to load the colorscheme
--@param opts table: custom options to be applied to the editor
function nebulous.setup(opts)
  local options = opts or {}
  utils.set_options(scheme_options, options)

  local scheme = color.set_scheme(scheme_options.variant)
  local editor_colors = theme.load_editor(scheme, scheme_options)
  utils.load_colorscheme(editor_colors)
end

return nebulous
