# <img src="https://user-images.githubusercontent.com/74944536/214324244-9fc431df-73b3-4472-b90b-8c14a5cd17a5.png" alt="nightly" width="80"/> Nightly


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
    color = "black", -- blue, green or red
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

## Light

### `vim.o.background = "light"`

![Screenshot (216)](https://user-images.githubusercontent.com/74944536/233062445-4182829e-86dd-4817-a9ed-3fb8d6737612.png)

![Screenshot (217)](https://user-images.githubusercontent.com/74944536/233062452-7aef844a-43d3-4b71-b2a6-0dcfa3832d84.png)

## Dark

### `vim.o.background = "dark"`

#### Black

![Screenshot (207)](https://user-images.githubusercontent.com/74944536/233062292-f2d83381-c755-4e97-88fe-185905cb9a78.png)

![Screenshot (206)](https://user-images.githubusercontent.com/74944536/233062330-13945cb5-3aec-4982-9641-c71a3fa64398.png)

#### Blue

![Screenshot (212)](https://user-images.githubusercontent.com/74944536/233062498-93d61d69-e6ee-48b6-acbc-42c621739aee.png)

![Screenshot (213)](https://user-images.githubusercontent.com/74944536/233062511-96dcaf45-79d1-4b8e-8b77-5cd8c78fa80a.png)

#### Green

![Screenshot (210)](https://user-images.githubusercontent.com/74944536/233062543-e015a7cc-3669-4fa3-bc2f-27918c737afd.png)

![Screenshot (211)](https://user-images.githubusercontent.com/74944536/233062551-08840661-0644-4959-9639-d9c5069dccf4.png)

#### Red

![Screenshot (214)](https://user-images.githubusercontent.com/74944536/233062580-d20a9649-8488-4482-b2d5-726bce8a62aa.png)

![Screenshot (215)](https://user-images.githubusercontent.com/74944536/233062589-6ee1a830-a121-49da-8dc5-8db954c44a25.png)

</div>

## Credits

Thanks for some colors in their palette.

- [poimandres](https://github.com/olivercederborg/poimandres.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [Everblush](https://github.com/Everblush/nvim)
