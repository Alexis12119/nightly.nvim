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

#### Black

![Screenshot (70)](https://user-images.githubusercontent.com/74944536/230716882-45e135e7-316a-4b53-8d75-fb78f287cc35.png)

![Screenshot (71)](https://user-images.githubusercontent.com/74944536/230716888-d441f7f1-bf93-4cfc-a25b-2d1a2abe71e9.png)

#### Blue

![Screenshot (64)](https://user-images.githubusercontent.com/74944536/230716900-4b39b276-eee7-42ca-9723-11b13ba89173.png)

![Screenshot (65)](https://user-images.githubusercontent.com/74944536/230716907-d1c65a16-e5c0-4f9b-ac79-f41eb175a0fc.png)

#### Green

![Screenshot (66)](https://user-images.githubusercontent.com/74944536/230716921-582f3255-67cc-4dc9-8487-9863486b75fe.png)

![Screenshot (67)](https://user-images.githubusercontent.com/74944536/230716933-96b12c7b-fb1c-41a8-b409-b6106788c198.png)

#### Red

![Screenshot (68)](https://user-images.githubusercontent.com/74944536/230716938-f4cf46f0-e332-4ed8-b430-549e53b221d0.png)

![Screenshot (69)](https://user-images.githubusercontent.com/74944536/230716944-30d0c1af-3fc5-4c57-8373-43716da62b68.png)

</div>

## Credits

Thanks for some colors in their palette.

- [poimandres](https://github.com/olivercederborg/poimandres.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- [Everblush](https://github.com/Everblush/nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
- habamax
