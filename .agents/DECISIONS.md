# 📜 Decisions Log: agents-init

## 🧠 Architectural Principles
- **ADRV Methodology:** Analyze, Draft, Refactor, Validate. The mandatory loop for all modifications.
- **Lazy-Loading Context:** Keep `.agents/` minimal; load skill content ONLY when invoked.
- **Surgical Centralization:** `master_questions.md` is the single source of truth for setup configurations.

## 🛠️ Key Decisions
1. **ECO_MGR as Master Architect:** Merged factory and audit roles into `ECO_MGR` for unified quality control.
2. **Blueprint Scalability:** Moved from `common/` monolith to `blueprints/` directory structure.
    - `blueprints/_base/` contains the mandatory ecosystem.
    - `blueprints/[category]/` contains stack-specific overrides.
3. **Portability:** Used `$(dirname "${BASH_SOURCE[0]}")` and `OSTYPE` checks for cross-platform (Linux/macOS) compatibility.
