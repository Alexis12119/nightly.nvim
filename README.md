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

## 🚀 Usage

```vim
" Vimscript
colorscheme nightly
```

```lua
-- Lua
vim.cmd "colorscheme nightly"
```

## ⚙️ Configuration

> ❗️ Configuration needs to be set **BEFORE** loading the colorscheme.

```lua
require("nightly").setup({
    color = "blue", -- white, gray, green or red
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

## 📷 Screenshots

<div align="center">

#### Transparent

![Screenshot (1462)](https://user-images.githubusercontent.com/74944536/216761754-ee485ded-53ff-472b-b9fb-0e782c34a523.png)

#### Blue

![Screenshot (1464)](https://user-images.githubusercontent.com/74944536/216761731-945f1493-2728-4dc4-a065-68ae17f3beb3.png)

#### Green

![Screenshot (1484)](https://user-images.githubusercontent.com/74944536/216761734-73593990-2643-4d2a-a19f-84eec16b135a.png)

#### Gray

![Screenshot (1489)](https://user-images.githubusercontent.com/74944536/216777947-9dcc21df-1aa9-4861-9b91-765678187dc0.png)

#### Red

![Screenshot (1488)](https://user-images.githubusercontent.com/74944536/216777956-979ad236-0588-4ae7-b96f-06bd3c11fa66.png)

</div>

## Credits

Thanks for some colors in their palette.

- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
- [Everblush](https://github.com/Everblush/nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
- [onenord.nvim](https://github.com/rmehri01/onenord.nvim)
- habamax
