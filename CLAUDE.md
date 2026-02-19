# Neovim Configuration

Kickstart.nvim-based config. Single-file core (`init.lua`) with modular plugin specs.

## Structure

```
init.lua                        -- Core: options, keymaps, plugin manager bootstrap, inline plugin configs
lua/kickstart/plugins/          -- Upstream kickstart plugin specs (autopairs, debug, gitsigns, indent_line, lint, neo-tree)
lua/custom/plugins/             -- User plugin specs (loaded via `{ import = 'custom.plugins' }`)
```

Plugin specs use lazy.nvim conventions: `opts`, `keys`, `config`, `event`, `dependencies`.

## Keybinding Conventions

- **LSP**: Uses Neovim 0.11 built-in `gr*` namespace (`grr`, `gri`, `grd`, `grt`, `grn`, `gra`) with Telescope picker overrides. Additional: `gd` (definition), `grc`/`grC` (call hierarchy), `grD` (declaration), `grf` (format). All LSP keybindings are consolidated in the lspconfig `LspAttach` autocmd in init.lua — no `<leader>l` group.
- **Find**: `<leader>f*` — Telescope pickers (files, grep, buffers, diagnostics, yank history, etc.)
- **Git**: `<leader>g*` — Neogit/diffview
- **Jujutsu**: `<leader>j*` — jj.nvim commands
- **AI**: `<leader>a*` — claudecode.nvim
- **Session**: `<leader>S*` — persistence.nvim
- **Toggle**: `<leader>t*` — toggle features (e.g. inlay hints)
- **Diagnostics**: `<leader>q` — quickfix list
- Built-in Vim/Neovim defaults are preferred over custom bindings where they exist.

## Language Servers

Configured in init.lua `servers` table: gopls, rust_analyzer, pyright, bashls, solidity_ls_nomicfoundation, lua_ls. Mason ensures installation.

## Formatters (conform.nvim)

lua=stylua, go=goimports, rust=rustfmt, python=black, sh=shfmt. Format-on-save is enabled.

## Key Plugins

- **cutlass.nvim**: `d`/`c`/`x`/`s` use black hole register; `m` is the "cut" key that yanks before deleting
- **yanky.nvim**: Yank ring with `<C-p>`/`<C-n>` cycling after paste, `<leader>fy` Telescope picker
- **claudecode.nvim**: Native terminal provider, right split at 40% width

## Style

- Lua code formatted with stylua (see .stylua.toml)
- Single quotes for strings, no trailing semicolons
- Minimal comments — only explain *why*, not *what*
