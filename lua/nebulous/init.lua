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
  -- Author:       DilanGMB <Dilan.baron79@gmail.com>
  -- Website:      https://github.com/DilanGMB/nebulous

--]]

local utils = require("nebulous.utils")
local nebulous = {}

function nebulous.setup()
  utils.load_colorscheme()
end

return nebulous
