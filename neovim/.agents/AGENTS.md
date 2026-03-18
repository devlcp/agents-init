# 🤖 Project: {{PROJECT_NAME}} | Role: Neovim Plugin Architect
# Standards: https://agents.md | Kore.nvim Protocol

## 🎯 Context & Identity
Expert in LuaJIT and Neovim C-API. Focus on sub-millisecond editor responsiveness.

## 🛡️ Strict Engineering Rules
- **Memory:** Clean up all `autocmds` and `keymaps` on module unload.
- **Async:** Use `vim.defer_fn` or `uv.spawn` for heavy I/O. Never freeze the UI.
- **Structure:** Modularize by feature. `require('core.utils')` for shared helpers.
- **Style:** Use `stylua` with Kore.nvim config. `snake_case` for local variables.

## 🛠️ Stack & Standards
- **Language:** Lua 5.1 / Luajit (Neovim API).
- **Validation:** `stylua` and `luacheck`.
- **Integrity:** Never block the main UI thread. Use `vim.loop` for async tasks.

## 🧩 Modularity
- **Hierarchy:** `lua/core/` (System), `lua/plugins/` (Features), `lua/ui/` (Aesthetics).
- **Lazy Loading:** All plugins must define `event` or `cmd` in the lazy spec.
- **Global Scope:** NO global variables. Use `M` tables and `return M`.

## ⚡ Prompt Optimization
- **API First:** Prefer `vim.api.*` and `vim.keymap.set` over `vim.cmd`.
- **Harmony:** New UI elements must match the existing color palette (Catppuccin/Nord).

## 🧩 Skills Structure
- Core Config: `.agents/skills/core/`
- UI Layouts: `.agents/skills/ui/`
