![palenight.vim][screenshot]

A dark color scheme for Vim/Neovim based off the [Material Pale Night][materialLink] color scheme. Much of the work is based on the lovely [onedark.vim][onedark] color scheme.

## Neovim with Lua

### Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "drewtempelmeyer/palenight.vim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.opt.background = "dark"
    vim.cmd.colorscheme("palenight")
  end,
}
```

### Usage

In your Lua configuration, such as `~/.config/nvim/init.lua`, use:

```lua
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd.colorscheme("palenight")
```

To configure lightline, add the following line:

```lua
vim.g.lightline = { colorscheme = "palenight" }
```

To configure airline, add the following line:

```lua
vim.g.airline_theme = "palenight"
```

### True Colors

To provide the best user experience possible, I recommend enabling true colors. Current Vim and Neovim versions support this with `termguicolors`:

```lua
vim.opt.termguicolors = true
```

### Italics

Italics are a fantastic way to improve the appearance of your code. Italics will do what they can, but, as they say, "you can't polish a 💩." (Although MythBusters busted this). Digressing here, so place this into your config:

```lua
vim.g.palenight_terminal_italics = 1
```

### Overriding Colors

Overriding palenight's colors is supported by setting the
`g:palenight_color_overrides` variable.  See [palenight.vim](./autoload/palenight.vim)
for a list of colors that may be overridden.  You must provide `gui`, `cterm`,
and `cterm16` values for each.

Example: Overriding the background color to pure black

```lua
vim.g.palenight_color_overrides = {
  black = { gui = "#000000", cterm = "0", cterm16 = "0" },
}
```

## Vim with Vimscript

### Installation

Using [vim-plug](https://github.com/junegunn/vim-plug), add this to your
`~/.vimrc`:

```vim
Plug 'drewtempelmeyer/palenight.vim'
```

Then install it from Vim:

```vim
:PlugInstall
```

### Usage

In your Vim configuration, such as `~/.vimrc`, use:

```vim
set termguicolors
set background=dark
colorscheme palenight
```

To configure lightline, add the following line:

```vim
let g:lightline = { 'colorscheme': 'palenight' }
```

To configure airline, add the following line:

```vim
let g:airline_theme = 'palenight'
```

### True Colors

To provide the best user experience possible, I recommend enabling true colors. Current Vim and Neovim versions support this with `termguicolors`:

```vim
set termguicolors
```

### Italics

Italics are a fantastic way to improve the appearance of your code. Italics will do what they can, but, as they say, "you can't polish a 💩." (Although MythBusters busted this). Digressing here, so place this into your config:

```vim
let g:palenight_terminal_italics = 1
```

### Overriding Colors

Overriding palenight's colors is supported by setting the
`g:palenight_color_overrides` variable.  See [palenight.vim](./autoload/palenight.vim)
for a list of colors that may be overridden.  You must provide `gui`, `cterm`,
and `cterm16` values for each.

Example: Overriding the background color to pure black

```vim
let g:palenight_color_overrides = {
      \ 'black': { 'gui': '#000000', 'cterm': '0', 'cterm16': '0' },
      \ }
```

## Contributors

[The lovely people that have contributed to palenight.vim](https://github.com/drewtempelmeyer/palenight.vim/graphs/contributors)

[screenshot]: images/screenshot.png
[materialLink]: https://github.com/equinusocio/material-theme
[onedark]: https://github.com/joshdick/onedark.vim
[firaCode]: https://github.com/tonsky/FiraCode
