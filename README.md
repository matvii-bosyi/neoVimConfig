# 🌀 My Neovim Frontend Config

This is a personal Neovim configuration focused on **frontend development**. It’s minimal, fast, and tailored for working with modern web technologies using powerful tools like LSP, Treesitter, Tabnine, and more.

---

## 📁 Project Structure
```
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── auto-pairs.lua
│       ├── auto-save.lua
│       ├── bufferline.lua
│       ├── gpt.lua
│       ├── live-server.lua
│       ├── lsp
│       │   ├── lspconfig.lua
│       │   └── mason.lua
│       ├── lualine.lua
│       ├── neotree.lua
│       ├── nvim-cmp.lua
│       ├── telescope.lua
│       ├── theme.lua
│       └── treesitter.lua
```
---

## 🔌 Plugins & Features

### 🌈 UI & UX
- **Theme**: [Sonokai](https://github.com/sainnhe/sonokai) (transparent)
- **Statusline**: [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- **Buffer management**: [Bufferline](https://github.com/akinsho/bufferline.nvim)
- **File explorer**: [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)

### 🧠 Autocompletion & AI
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Tabnine](https://github.com/codota/tabnine-nvim)

### ⚙️ LSP & Tooling
- LSP servers installed via [mason.nvim](https://github.com/williamboman/mason.nvim)
- Servers configured:
  - `tsserver`
  - `html`
  - `cssls`
  - `tailwindcss`
  - `emmet_ls`
  - `eslint`
- Tools:
  - `prettier`
  - `stylua`
  - `eslint_d`

### 🌳 Syntax Highlighting
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

### 🌐 Web Dev
- Live preview using `live-server.nvim`

### ✨ Productivity Boosters
- Auto save: [`auto-save.nvim`](https://github.com/Pocco81/auto-save.nvim)
- Auto pairs: [`nvim-autopairs`](https://github.com/windwp/nvim-autopairs`)

---

## 🎹 Keybindings (selected)

| Keybinding         | Description                      |
|--------------------|----------------------------------|
| `<leader>e`        | Toggle Neo-tree file explorer    |
| `<Tab>` / `<S-Tab>`| Cycle through buffers            |
| `<Space>q`         | Close current buffer             |
| `<Esc>`            | Clear search highlight           |
| `<leader>f`        | Format document (via LSP)        |
| `J` / `K` (visual) | Move selected lines up/down      |
| Arrow keys         | Disabled with funny warning 😄   |

---

## ⚙️ Editor Settings

- `tabstop = 2`
- `shiftwidth = 2`
- `expandtab = false`
- `number = true`
- `relativenumber = true`

---

## 🚀 Installation

Linux:
```bash
git clone https://github.com/matvii-bosyi/neoVimConfig ~/.config/nvim
```