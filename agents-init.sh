#!/bin/bash

# Configuration
TEMPLATES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

if [ $# -eq 1 ]; then
	# Default to current directory if only category is provided
	PROJECT_PATH="."
	CATEGORY=$1
elif [ $# -eq 2 ]; then
	PROJECT_PATH=$1
	CATEGORY=$2
else
	echo -e "${YELLOW}Usage: agents-init [project_path] <category>${NC}"
	echo -e "Available Categories: backend, frontend, enterprise, system-tools, custom"
	exit 1
fi

# 1. Prepare Path
mkdir -p "$PROJECT_PATH"
ABS_PATH=$(realpath "$PROJECT_PATH")

# 2. Inject .agents ecosystem
echo -e "${BLUE}🏗️  Injecting .agents ecosystem into: $ABS_PATH...${NC}"
# Assumes base-template exists in your agents-init repo
cp -r "$TEMPLATES_ROOT/common/.agents" "$ABS_PATH/"

# 3. Dynamic Extraction from master_questions.md
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
		sed -i "/### 2. Stack Specifics/r temp_q.md" "$SETUP_WIZARD_MD"
		echo -e "${GREEN}✅ Questions for $CAT_SEARCH injected into Setup Wizard.${NC}"
	else
		echo -e "${YELLOW}⚠️  No specific questions found for category '$CATEGORY'.${NC}"
	fi
	rm temp_q.md
fi

# 4. Personalize AGENTS.md
PROJECT_NAME=$(basename "$ABS_PATH")
sed -i "s/{{PROJECT_NAME}}/$PROJECT_NAME/g" "$ABS_PATH/.agents/AGENTS.md"

echo -e "${GREEN}🚀 System Ready! Open your AI and use the Activation Protocol.${NC}"
