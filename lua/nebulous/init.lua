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
local config = require("nebulous.config")
local nebulous = {}

---Setup function to load the colorscheme
--@param opts table: custom options to be applied to the editor
function nebulous.setup(opts)
  config.set_options(opts)

  local sch_opts = config.scheme_options
  local scheme = color.set_scheme(sch_opts.variant)
  local colors = theme.load_colors(scheme)

  utils.load_colorscheme(colors, sch_opts.custom_colors)
end

return nebulous
