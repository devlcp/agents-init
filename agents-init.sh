#!/bin/bash

# Configuración de rutas
REPO_URL="https://github.com/devlcp/agents-init.git"
TEMPLATES_ROOT="$HOME/agents-templates"

# Colores para la terminal
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

# 1. Sincronizar Repositorio de Plantillas
if [ ! -d "$TEMPLATES_ROOT" ]; then
  echo -e "${BLUE}📡 Clonando repositorio de agents-init...${NC}"
  git clone "$REPO_URL" "$TEMPLATES_ROOT"
else
  echo -e "${BLUE}🔄 Actualizando los templates locales...${NC}"
  cd "$TEMPLATES_ROOT" && git pull -q && cd - >/dev/null
fi

# 2. Selección de Proyecto
PROJECT_NAME=$1
STACK=$2

if [ -z "$PROJECT_NAME" ] || [ -z "$STACK" ]; then
  echo "❌ Uso: agents-init <nombre-proyecto> <base|go|astro|java|neovim>"
  exit 1
fi

# 3. Crear Estructura e Inyectar .agents
echo -e "${GREEN}🏗️  Creando proyecto $PROJECT_NAME con stack $STACK...${NC}"
mkdir -p "$PROJECT_NAME"
cp -r "$TEMPLATES_ROOT/$STACK/.agents" "$PROJECT_NAME/"

# 4. Personalización Dinámica (Cumpliendo Agents.md)
# Reemplazamos los placeholders en el AGENTS.md
sed -i "s/{{PROJECT_NAME}}/$PROJECT_NAME/g" "$PROJECT_NAME/.agents/AGENTS.md"
sed -i "s/{{DATE}}/$(date +%Y-%m-%d)/g" "$PROJECT_NAME/.agents/AGENTS.md"

echo -e "${GREEN}✅ ¡Listo! Entra a '$PROJECT_NAME' y despierta a tu agente.${NC}"
