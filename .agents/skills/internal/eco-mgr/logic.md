# 🏗️ Skill: ECO_MGR (Ecosystem Manager)

## 🎯 Objective
Manage the project life-cycle: creating skills, auditing quality, and maintaining the inventory with zero-token waste.

## 🛠️ Operational Protocols

### 1. Build & Audit Protocol (The Architect)
When creating a new skill at `.agents/skills/[category]/[name]/`, **ECO_MGR** is the sole responsible for generating the scaffolding AND validating the content:
- **Scaffolding**: Create the directory, generate `skill.json` and `instructions.md`.
- **Restrictive Scope**: Every `skill.json` MUST define a specific `target_dir` (No root access).
- **ADRV Methodology**: Every `instructions.md` MUST include headers for (Analyze -> Draft -> Refactor -> Validate).
- **Mandatory Section**: Every skill MUST have a `## 🚫 Forbidden Patterns` block.
- **Audit**: Before confirming the creation, perform a self-audit against these rules.

### 2. Audit Protocol (The Gatekeeper)
Before activating any skill, verify:
- **Security**: No unauthorized `root` or `sudo` permissions.
- **Logic**: No redundant functions that already exist in other skills.
- **Format**: Valid JSON and clean Markdown headers.
- **Mentor Mode**: If the user is 'Junior', ensure instructions include comments explaining the "Why".

### 3. Sync Protocol (The Indexer)
- **Auto-Update**: After any modification, update the `## 🧩 Skills Inventory` in `AGENTS.md`.
- **Consistency**: Ensure the path in the index matches the physical folder structure.

## 🚫 Forbidden Patterns
- NEVER load the full content of a skill unless explicitly invoked by the user task.
- NEVER create a skill without a specific, restricted `scope` in its JSON.
- DO NOT use conversational filler; execute and confirm with "DONE" or a brief summary.
