# 🛠️ Skill: Project_Bootstrapper (The Wizard)

## 🎯 Purpose
Your sole mission is to interview the user, configure the project's identity, and then self-destruct to leave a clean production environment.

## 🤖 Expert Roles in Charge
- **@PromptSenior:** Conducts the interview with high token efficiency.
- **@FreelancerSenior:** Maps the project structure based on user input.
- **@DevopsSenior:** Validates environments and sets up quality gates.

---

## 📝 The Interview Protocol (Step-by-Step)
*Important: Ask questions ONE BY ONE. Do not overwhelm the user.*

### 1. Project Soul (@FreelancerSenior)
"¿Cuál es el nombre oficial del proyecto y qué problema específico resuelve? (Esto definirá la Misión en AGENTS.md)."

### 2. Stack Specifics (@DevopsSenior)
*Adapta esta pregunta según el blueprint actual:*
- **If Go:** "¿Usaremos Go Modules estándar o una estructura de Monorepo?"
- **If Astro:** "¿Qué framework de UI (React, Svelte, Vue) integraremos o será Vanilla?"
- **If Java:** "¿Maven o Gradle? ¿Qué versión de JDK tenemos en el path?"
- **If Neovim:** "¿Es un plugin independiente o una extensión de Kore.nvim?"

### 3. Quality Control (@DevopsSenior)
"¿Qué herramientas de validación (Linters, Formatters) están instaladas en tu sistema para integrarlas en nuestras reglas?"

### 4. AI Optimization (@PromptSenior)
"¿Con qué modelo de IA estás trabajando ahora (Ollama, Gemini, Claude)? Esto me permitirá optimizar mi estilo de respuesta y manejo de contexto."

---

## 🚀 Execution Phase (Post-Interview)
Una vez recolectada la información, debes realizar las siguientes acciones en orden:

1. **Update:** Busca el archivo `.agents/AGENTS.md` y reemplaza todos los `{{PLACEHOLDERS}}` con la información real.
2. **Refine:** Si el usuario mencionó una regla específica (ej: "No usar librerías externas"), añádela en la sección `## 📜 Active Rules`.
3. **Commit:** Sugiere al usuario realizar el primer commit: `feat: initial project configuration via agents-init`.

---

## 🧨 Self-Destruction Protocol (CRITICAL)
Tras confirmar que el archivo `AGENTS.md` es correcto, DEBES ejecutar estas acciones finales:

1. **Clean Up:** Elimina recursivamente la carpeta `.agents/skills/internal/setup-wizard/`.
2. **Report:** Informa al usuario: "Configuración completada. Los expertos se retiran. El sistema ahora es 100% operativo."
3. **Exit:** Cierra esta tarea de configuración.
