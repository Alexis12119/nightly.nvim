# <img src="https://user-images.githubusercontent.com/74944536/214324244-9fc431df-73b3-4472-b90b-8c14a5cd17a5.png" alt="nightly" width="80"/> Nightly

A colorscheme for my [nvim-config](https://github.com/Alexis12119/nvim-config).

![Screenshot (1423)](https://user-images.githubusercontent.com/74944536/215335292-00649616-64d2-4a96-9ad5-d4c9aed5d176.png)

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
    color = "blue", -- gray, green or red
    transparent = false, -- experimental
    styles = {
        comments = { italic = true },
        functions = { italic= false },
        keywords = { italic = false },
        variables = { italic = false },
    },
})
```
