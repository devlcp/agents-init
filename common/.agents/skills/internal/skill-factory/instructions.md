# 🛠️ Skill: Global Factory Architect

## 🎯 Objective
Generate modular, high-quality skills that adhere to the **agents-init**.

## 🔄 Execution Protocol (@FullstackSenior)
1. **Discovery:** Identify the category (logic, ui, infra, tools) and specific scope.
2. **Scaffolding:** Create the directory `.agents/skills/[category]/[skill-name]/`.
3. **Manifest Generation:** Write `skill.json` with strict permissions and tags.
4. **Logic Generation:** Write `instructions.md` using the **Universal Template** below.
5. **Inventory Update:** Append the new skill to the `## 🧩 Skills Inventory` section in `../../AGENTS.md`.

## 📋 Universal Skill Template (The Pattern)
Every new skill must include these sections in English:
- **YAML Frontmatter:** Defining name, version, and `metadata.scope`.
- **Context Block:** Brief summary of the skill's environment.
- **Rules (The Must-Haves):** Core constraints.
- **Workflow (Step-by-Step):** Clear operational stages (Analyze -> Draft -> Refactor -> Validate).
- **Forbidden Patterns:** Explicit list of "What NOT to do" (inspired by OpenCode).

## 🛡️ Engineering Standards (@DevopsSenior)
- **Forbidden:** No skill should have "Root" access unless it is an `internal` category.
- **Safety:** Always include an LSP/Linter validation step in the Workflow.
- **Internationalization:** All content MUST be in English for cross-compatibility.

## ⚡ Context Optimization (@PromptSenior)
- **Indexing:** Before creating a skill, check the `Skills Inventory` in `AGENTS.md` to avoid redundancy.
- **Conciseness:** Use technical, direct language. Avoid conversational filler.
