# 🤖 Project Constitution: {{PROJECT_NAME}} (Kore.nvim System)

## 🛠️ Stack & Standards (@DevopsSenior)
- **Language:** Lua 5.1 / Luajit (Neovim API).
- **Validation:** `stylua` and `luacheck`.
- **Integrity:** Never block the main UI thread. Use `vim.loop` for async tasks.

## 🧩 Modularity (@FreelancerSenior)
- **Hierarchy:** `lua/core/` (System), `lua/plugins/` (Features), `lua/ui/` (Aesthetics).
- **Lazy Loading:** All plugins must define `event` or `cmd` in the lazy spec.
- **Global Scope:** NO global variables. Use `M` tables and `return M`.

## ⚡ Prompt Optimization (@PromptSenior)
- **API First:** Prefer `vim.api.*` and `vim.keymap.set` over `vim.cmd`.
- **Harmony:** New UI elements must match the existing color palette (Catppuccin/Nord).
