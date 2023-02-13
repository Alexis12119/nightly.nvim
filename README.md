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
    color = "black", -- white, blue, green or red
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

#### [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

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

#### [lightline.vim](https://github.com/itchyny/lightline.vim)

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

#### Transparent

![Screenshot (1576)](https://user-images.githubusercontent.com/74944536/218347872-16a189bc-8dec-475f-a54f-0a6807f86ef6.png)

#### Blue

![Screenshot (1572)](https://user-images.githubusercontent.com/74944536/218347890-243e41d4-cd53-4b8e-9906-062c5ad299c2.png)

#### Green

![Screenshot (1573)](https://user-images.githubusercontent.com/74944536/218347910-9e8703dd-b4f5-4ed0-905d-d83d29390a2a.png)

#### Black

![Screenshot (1571)](https://user-images.githubusercontent.com/74944536/218347923-8f3e7fb4-57e9-4e6f-8aca-613d0f742836.png)

#### Red

![Screenshot (1575)](https://user-images.githubusercontent.com/74944536/218347943-743da274-cc70-47c5-9e5c-52ed21acf939.png)

#### White

![Screenshot (1574)](https://user-images.githubusercontent.com/74944536/218347955-55df6191-0db7-42a5-ab3c-73f9e577204e.png)

</div>

## Credits

Thanks for some colors in their palette.

- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- [Everblush](https://github.com/Everblush/nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
- [onenord.nvim](https://github.com/rmehri01/onenord.nvim)
- habamax
