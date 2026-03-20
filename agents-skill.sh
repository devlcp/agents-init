#!/bin/bash

# Configuration
TEMPLATES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

# Safety check: ensure we are in a project with agents
if [ ! -d ".agents" ]; then
	echo "❌ Error: .agents directory not found. Execute this inside your target project."
	exit 1
fi

echo -e "${BLUE}--- Agents-Skill Generator (ADRV Pattern) ---${NC}"
read -rp "Skill Name (e.g., api-auth): " SKILL_NAME
read -rp "Category (logic/ui/infra/tools): " CATEGORY
read -rp "Description: " DESCRIPTION

SKILL_PATH=".agents/skills/$CATEGORY/$SKILL_NAME"
mkdir -p "$SKILL_PATH"

# 1. Generate skill.json
cat <<EOF >"$SKILL_PATH/skill.json"
{
  "name": "${SKILL_NAME^^}",
  "version": "1.0.0",
  "description": "$DESCRIPTION",
  "status": "active",
  "metadata": {
    "scope": ["$CATEGORY", "ai"],
    "tags": ["$CATEGORY", "automated"]
  },
  "scope": {
    "target_dir": "./",
    "allowed_extensions": ["*"]
  },
  "permissions": ["read", "write"],
  "specification": "./instructions.md"
}
EOF

# 2. Generate instructions.md (English & @FullstackSenior)
cat <<EOF >"$SKILL_PATH/instructions.md"
---
name: ${SKILL_NAME^^}
description: $DESCRIPTION
version: 1.0.0
---

# 🛠️ Skill: ${SKILL_NAME^^}

> **Context:** Managed by @FullstackSenior.

## 🎯 Objective
$DESCRIPTION

## 🛠️ Workflow (ADRV Pattern)
1. **Analyze:** Assessment of requirements.
2. **Draft:** Initial implementation.
3. **Refactor:** Optimization and clean code check.
4. **Validate:** Final verification against LSP/Linters.

## 🚫 Forbidden Patterns
- Do not bypass AGENTS.md protocols.
- Do not apply logic without Socratic clarification if ambiguous.
EOF

# Compatibility check for sed -i
if [[ "$OSTYPE" == "darwin"* ]]; then
	SED_I="sed -i ''"
else
	SED_I="sed -i"
fi

# 3. Dynamic Indexing
AGENTS_FILE=".agents/AGENTS.md"
if [ -f "$AGENTS_FILE" ]; then
	NEW_ENTRY="- **${SKILL_NAME^^}**: [$SKILL_PATH] - $DESCRIPTION"
	$SED_I "/## 🧩 Skills Inventory/a $NEW_ENTRY" "$AGENTS_FILE"
	echo -e "${GREEN}📖 Inventory updated in AGENTS.md${NC}"
fi

echo -e "${GREEN}✅ Skill created at $SKILL_PATH${NC}"
