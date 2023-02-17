# <img src="https://user-images.githubusercontent.com/74944536/214324244-9fc431df-73b3-4472-b90b-8c14a5cd17a5.png" alt="nightly" width="80"/> Nightly

**Elevate your coding environment with this simple Neovim color scheme.**

## ⚡️ Requirements

- Neovim >= 0.6.0

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
    color = "black", -- light_blue, blue, green or red
    transparent = false,
    styles = {
        comments = { italic = true },
        functions = { italic= false },
        keywords = { italic = false },
        variables = { italic = false },
    },
    highlights = {
        -- add or override highlights
        -- Normal = { bg = "#000000" }
    },
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

![lualine](https://user-images.githubusercontent.com/74944536/218365052-40bdb345-cc26-4720-aa0f-e9f8c6b45fce.png)

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

### [lightline.vim](https://github.com/itchyny/lightline.vim)

![lightline](https://user-images.githubusercontent.com/74944536/218365089-5d5205a9-884e-4968-ba19-756d3be5c85d.PNG)

```lua
-- Lua
vim.g.lightline = {
    ["colorscheme"] = "nightly",
}
```

```vim
" Vimscript
let g:lightline = { 'colorscheme': 'nightly' }
```

## 📷 Screenshots

<div align="center">

### Light Background

#### `vim.o.background = "light"`

![Screenshot (1676)](https://user-images.githubusercontent.com/74944536/219812379-5a923ff5-e58b-421a-ada4-31a48402fc21.png)


### Dark Background

#### `vim.o.background = "dark"`

#### Black

![Screenshot (1654)](https://user-images.githubusercontent.com/74944536/218428764-ec919fb0-7923-408c-b05d-92f5b7b00436.png)

#### Blue

![Screenshot (1656)](https://user-images.githubusercontent.com/74944536/218428687-097d6339-8b89-4d47-8ba2-087c0cca051f.png)

#### Light Blue

![Screenshot (1658)](https://user-images.githubusercontent.com/74944536/218428876-c916153e-f841-47e8-a436-f61cff13411f.png)

#### Green

![Screenshot (1653)](https://user-images.githubusercontent.com/74944536/218428953-4526cbf7-e45c-449e-ae3a-3f2062f10930.png)

#### Red

![Screenshot (1657)](https://user-images.githubusercontent.com/74944536/218428909-6ec94f83-bc3b-448c-90b4-5bc7452a18fd.png)

</div>

## Credits

Thanks for some colors in their palette.

- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- [Everblush](https://github.com/Everblush/nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
- [onenord.nvim](https://github.com/rmehri01/onenord.nvim)
- habamax
