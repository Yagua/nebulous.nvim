--[[

   ****     **         **               **
  /**/**   /**        /**              /**
  /**//**  /**  ***** /**      **   ** /**  ******  **   **  ******
  /** //** /** **///**/****** /**  /** /** **////**/**  /** **////
  /**  //**/**/*******/**///**/**  /** /**/**   /**/**  /**//*****
  /**   //****/**//// /**  /**/**  /** /**/**   /**/**  /** /////**
  /**    //***//******/****** //****** ***//****** //****** ******
  //      ///  ////// /////    ////// ///  //////   ////// //////

  -- Description:  Minimalist Collection of Dark Colorschemes Written in Lua
  -- Author:       DilanGMB <Dilan.baron79@gmail.com>
  -- Website:      https://github.com/DilanGMB/nebulous

--]]

local utils = require("nebulous.utils")

local function setup(style)
  vim.g.nb_style = style or "night"
  utils.setup()
end

return { setup = setup }
