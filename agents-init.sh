#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

# 2. Selección de Proyecto
PROJECT_PATH=$1
STACK=$2

if [ -z "$PROJECT_PATH" ] || [ -z "$STACK" ]; then
  echo "❌ Uso: agents-init <ruta-del-proyecto> <base|go|astro|java|neovim>"
  exit 1
fi

PROJECT_NAME=$(basename "$PROJECT_PATH")

# 3. Inyectar .agents
echo -e "${GREEN}🏗️  Configurando proyecto $PROJECT_NAME en $PROJECT_PATH con stack $STACK...${NC}"
cp -r "./$STACK/.agents" "$PROJECT_PATH/"

# 4. Personalización Dinámica (Cumpliendo Agents.md)
# Reemplazamos los placeholders en el AGENTS.md
sed -i "s/{{PROJECT_NAME}}/$PROJECT_NAME/g" "$PROJECT_PATH/.agents/AGENTS.md"
sed -i "s/{{DATE}}/$(date +%Y-%m-%d)/g" "$PROJECT_PATH/.agents/AGENTS.md"

echo -e "${GREEN}✅ ¡Listo! Entra a '$PROJECT_NAME', abrelo con tu editor con AI y despierta a tu agente.${NC}"
