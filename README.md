![logo](./media/logo.png)

 
Minimalist Collection of Dark Colorschemes Created with [Colorbuddy helper](https://github.com/tjdevries/colorbuddy.vim)

- Check the root file here: [`nightbuddy.lua`](./lua/nightbuddy.lua)

## Features
- These color schemes are compatible with Tree-Sitter, Telescope, Nvim-Tree and others.
- They support a large number of terminal emulation environments, such as:
    - [Alacritty](https://github.com/alacritty/alacritty)
    - [Kitty](https://github.com/kovidgoyal/kitty)
    - [Tmux](https://github.com/tmux/tmux)
    - [Windows Terminal](https://github.com/microsoft/terminal)

## Prequisites

- [Neovim version 0.5+](https://github.com/neovim/neovim/releases)
- [Colorbuddy helper](https://github.com/tjdevries/colorbuddy.vim)
- (Recommended) [Tree-Sitter](https://github.com/nvim-treesitter/nvim-treesitter) Highlight for a better use of colors

## Installation

##### [Vim Plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'tjdevries/colorbuddy.vim'
Plug 'DilanGMB/nightbuddy'
```

##### [Packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'tjdevries/colorbuddy.vim'
use 'DilanGMB/nightbuddy'
```

## Configuration & Use
##### VimScript
```vim
" Put this lines inside your vimrc to set the colorscheme
let g:nb_style = "STYLE"
lua require('colorbuddy').colorscheme('nightbuddy')
```
##### Lua
```lua
-- Put this lines inside your vimrc to set the colorscheme
vim.g.nb_style = "STYLE"
require('colorbuddy').colorscheme('nightbuddy')
```
#### Colorscheme Styles
- night (default style if no variant is specified)
- twilight
- midnight

## Preview

#### Twilight
![kosmos](./media/twilight.gif)

#### Night
![night](./media/night.gif)

#### Midnight
![midnight](./media/midnight.gif)

## Lualine scheme
If you want to use the custom colorscheme of lualine, put the following code in your init
(make sure you have nightbuddy and lualine installed, otherwise it may not work):

```lua
require('lualine').setup {
  options = {
    -- theme name
    theme = 'nightbuddy'
  }
}
```

More variants of the color scheme and status line coming soon!

### Preview

![midnight](./media/lualine.gif)

*\- Preview with Midnight variant*

### NOTE

- It is good to remember that these colorscheme may not work if the above requirements are not taken into account.
- In case you find an error in any color scheme, please make an appropriate issue describing in detail the problem found.
- Also, if you want to make any contribution, please make the PR descriptive for easy integration.

I hope you enjoy these color schemes!!
