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

![Screenshot (110)](https://user-images.githubusercontent.com/74944536/230778913-7ea91365-3078-4bf2-8d4a-f6173a516190.png)

![Screenshot (111)](https://user-images.githubusercontent.com/74944536/230778921-113bc046-e89a-4af0-a3f9-0a40ff517641.png)


## Dark

### `vim.o.background = "dark"`

#### Black

![Screenshot (88)](https://user-images.githubusercontent.com/74944536/230719552-9101c47a-4dc0-4482-89cf-5458644bd5ea.png)

![Screenshot (89)](https://user-images.githubusercontent.com/74944536/230719560-9367f7bd-a095-4f15-929c-68634714ba1d.png)

#### Blue

![Screenshot (84)](https://user-images.githubusercontent.com/74944536/230719574-8aef555b-858f-458f-92ed-a37f5356a68a.png)

![Screenshot (85)](https://user-images.githubusercontent.com/74944536/230719580-8425c5d4-5243-434d-a2a3-51ea31aa772d.png)

#### Green

![Screenshot (90)](https://user-images.githubusercontent.com/74944536/230719587-3d02b443-7f66-4126-8bd7-d5a8a27c0a06.png)

![Screenshot (91)](https://user-images.githubusercontent.com/74944536/230719591-e7006ace-9a98-4ba7-9b70-e10746e1d573.png)

#### Red

![Screenshot (92)](https://user-images.githubusercontent.com/74944536/230719602-bf95612b-8a90-4013-9c95-fa465ef071ec.png)

![Screenshot (93)](https://user-images.githubusercontent.com/74944536/230719607-3f16e56d-bfda-4262-9225-4f73b0a4f4a5.png)

</div>

## Credits

Thanks for some colors in their palette.

- [poimandres](https://github.com/olivercederborg/poimandres.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- [Everblush](https://github.com/Everblush/nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
- habamax
