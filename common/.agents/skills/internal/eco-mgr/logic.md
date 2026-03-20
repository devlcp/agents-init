# 🏗️ Skill: ECO_MGR (Ecosystem Manager)

## 🎯 Objective
Manage the project life-cycle: creating skills, auditing quality, and maintaining the inventory with zero-token waste.

## 🛠️ Operational Protocols

### 1. Build Protocol (The Factory)
When creating a new skill at `.agents/skills/[category]/[name]/`:
- **Generate `skill.json`**: Must include a specific `target_dir` (No root access).
- **Generate `instructions.md`**: Follow the OpenCode pattern (Analyze -> Draft -> Refactor -> Validate).
- **Mandatory Section**: Every skill MUST have a `## 🚫 Forbidden Patterns` block.

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
