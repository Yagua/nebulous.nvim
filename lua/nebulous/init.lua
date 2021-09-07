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
local sets = require("nebulous.config")
local nebulous = {}

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

function nebulous.setup(opts)
  local options = opts or {}
  utils.set_options(scheme_options, options)

  local scheme = color.set_scheme(scheme_options.variant)
  utils.load_colorscheme(theme.load_editor(scheme))
end

return nebulous
