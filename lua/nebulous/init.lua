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
local M = {}

function M.setup()
  utils.load_colorscheme()
end

return M
