#!/bin/bash

# Configuration
TEMPLATES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Compatibility check for sed -i
if [[ "$OSTYPE" == "darwin"* ]]; then
	SED_I="sed -i ''"
else
	SED_I="sed -i"
fi

# Parse arguments
LIGHT_MODE=false
PARAMS=()

for arg in "$@"; do
	if [[ "$arg" == "--light" ]]; then
		LIGHT_MODE=true
	else
		PARAMS+=("$arg")
	fi
done

if [ ${#PARAMS[@]} -eq 0 ]; then
	PROJECT_PATH="."
elif [ ${#PARAMS[@]} -eq 1 ]; then
	PROJECT_PATH="${PARAMS[0]}"
elif [ ${#PARAMS[@]} -eq 2 ]; then
	PROJECT_PATH="${PARAMS[0]}"
	CATEGORY="${PARAMS[1]}"
else
	echo -e "${YELLOW}Usage: agents-init [project_path] <category> [--light]${NC}"
	echo -e "Available Categories: backend, frontend, enterprise, system-tools, custom"
	exit 1
fi

# 1. Prepare Path & Idempotency Check
if [ -d "$PROJECT_PATH/.agents" ]; then
	echo -e "${YELLOW}⚠️  Ecosystem .agents already exists in: $PROJECT_PATH${NC}"
	read -rp "Overwrite it? (y/n): " CHOICE
	if [[ "$CHOICE" != "y" ]]; then
		echo "❌ Aborted."
		exit 1
	fi
fi

mkdir -p "$PROJECT_PATH"
# Portable way to get absolute path
ABS_PATH="$(cd "$PROJECT_PATH" && pwd)"

# 2. Inject Base .agents ecosystem
echo -e "${BLUE}🏗️  Injecting base ecosystem into: $ABS_PATH...${NC}"
cp -r "$TEMPLATES_ROOT/common/.agents" "$ABS_PATH/"

# 3. Inject Stack Blueprint (Overlay) - Skip if in Light Mode
if [ "$LIGHT_MODE" = false ]; then
	if [ -n "$CATEGORY" ]; then
		BLUEPRINT_PATH="$TEMPLATES_ROOT/blueprints/$CATEGORY"
		if [ -d "$BLUEPRINT_PATH" ]; then
			echo -e "${BLUE}🎨 Applying $CATEGORY blueprint...${NC}"
			# Add overlay logic here if needed
		else
			echo -e "${YELLOW}⚠️  Blueprint '$CATEGORY' not found. Skipping.${NC}"
		fi
	fi
fi

# 4. Dynamic Extraction from master_questions.md - Skip if in Light Mode
if [ "$LIGHT_MODE" = false ] && [ -n "$CATEGORY" ]; then
	MASTER_QUESTIONS="$TEMPLATES_ROOT/master_questions.md"
	SETUP_WIZARD_MD="$ABS_PATH/.agents/skills/internal/setup-wizard/setup.md"

	if [ -f "$MASTER_QUESTIONS" ]; then
		# Capitalize category for matching (e.g., backend -> Backend)
		CAT_SEARCH=$(echo "$CATEGORY" | sed 's/./\U&/')

		echo -e "${BLUE}🔍 Extracting Mentor Questions for: $CAT_SEARCH...${NC}"

		# Extract specific section cleanly
		sed -n "/^## $CAT_SEARCH/,/^##/p" "$MASTER_QUESTIONS" | grep -v "^##" | sed '/^[[:space:]]*$/d' >temp_q.md

		if [ -s temp_q.md ]; then
			# Inject into the setup skill
			$SED_I "/### 2. Stack Specifics/r temp_q.md" "$SETUP_WIZARD_MD"
			echo -e "${GREEN}✅ Questions for $CAT_SEARCH injected into Setup Wizard.${NC}"
		else
			echo -e "${YELLOW}⚠️  No specific questions found for category '$CATEGORY'.${NC}"
		fi
		rm temp_q.md
	fi
fi

# 5. Personalize Governance (AGENTS.md, DECISIONS.md, STATUS.md)
PROJECT_NAME=$(basename "$ABS_PATH")
find "$ABS_PATH/.agents/" -maxdepth 1 -name "*.md" -exec $SED_I "s/{{PROJECT_NAME}}/$PROJECT_NAME/g" {} +

echo -e "${GREEN}🚀 System Ready! Open your AI and use the Activation Protocol.${NC}"
