# <img src="https://user-images.githubusercontent.com/74944536/214324244-9fc431df-73b3-4472-b90b-8c14a5cd17a5.png" alt="nightly" width="80"/> Nightly


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

### Light Background

#### `vim.o.background = "dark"`

#### Black

![Screenshot (31)](https://user-images.githubusercontent.com/74944536/230517696-8f646d4b-5ce9-439a-97f2-bf1c3f7802ef.png)

![Screenshot (30)](https://user-images.githubusercontent.com/74944536/230517708-a49570eb-b36e-4c6e-8eb3-de2c01c7389c.png)

#### Blue

![Screenshot (35)](https://user-images.githubusercontent.com/74944536/230517737-fc3ca533-9c0c-49e2-87ce-3b65fd5bfb0b.png)

![Screenshot (34)](https://user-images.githubusercontent.com/74944536/230517744-593d1e0a-6db4-446d-9a30-f1cff2b39cb9.png)

#### Green

![Screenshot (36)](https://user-images.githubusercontent.com/74944536/230517764-8699359c-ebcb-4d3e-ad60-74292fd89058.png)

![Screenshot (37)](https://user-images.githubusercontent.com/74944536/230517845-55bffd62-eaac-4e13-a876-36c13509d97e.png)


#### Red

![Screenshot (42)](https://user-images.githubusercontent.com/74944536/230517927-0c5564e3-ed2e-43a4-86e0-b3cbf3af06ad.png)

![Screenshot (38)](https://user-images.githubusercontent.com/74944536/230517949-1b4bae42-326c-4162-8edc-5b5d04783372.png)

</div>

## Credits

Thanks for some colors in their palette.

- [poimandres](https://github.com/olivercederborg/poimandres.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- [Everblush](https://github.com/Everblush/nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
- habamax
