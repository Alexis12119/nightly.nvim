![Split](https://github.com/Alexis12119/nightly.nvim/assets/74944536/5645cbbb-2182-43fa-977d-6d81f1d68bb7)
![Telescope](https://github.com/Alexis12119/nightly.nvim/assets/74944536/dcbfa4e3-d3d5-4b09-b205-154cde98cc92)
![which-key](https://github.com/Alexis12119/nightly.nvim/assets/74944536/56eb49d8-ac84-4ed8-b714-b66bb0faf538)

## ⚡️ Requirements

- Neovim >= 0.8

## 💻 Installation

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use "Alexis12119/nightly.nvim"
```

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'Alexis12119/nightly.nvim'
```

[lazy](https://github.com/folke/lazy.nvim)

```lua
{ "Alexis12119/nightly.nvim" }
```

## ⚙️ Configuration

> ❗️ Configuration needs to be set **BEFORE** loading the colorscheme.

```lua
require("nightly").setup({
  transparent = false,
  styles = {
    comments = { italic = true },
    functions = { italic = false },
    variables = { italic = false },
    keywords = { italic = false },
  },
  highlights = {},
})
```

## 🚀 Usage

```vim
" Vimscript
colorscheme nightly
```

```lua
-- Lua
vim.cmd "colorscheme nightly"
```

### [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

```lua
-- Lua
require('lualine').setup({
    options = { theme = 'nightly' }
})
```

```vim
" Vimscript
lua << EOF
require('lualine').setup({
    options = { theme = 'nightly' }
})
EOF
```

# Integrations

- [alpha.nvim](https://github.com/goolord/alpha-nvim)
- [dashboard.nvim](https://github.com/nvimdev/dashboard-nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim)
- [neogit](https://github.com/TimUntersberger/neogit)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)

## Credits

I would like to express my appreciation to the Everblush team and the contributors who created this wonderful theme. I customized the theme according to my liking, but the foundation of the design was built by their hard work and creativity. The color palette of Everblush is truly captivating, and I'm grateful for the opportunity to build upon their work. Thank you for your inspiring contribution to the design community.

- [Everblush](https://github.com/Everblush/nvim)
