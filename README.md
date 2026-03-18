# 🌌 agents-init: AI-First Project Blueprints

**`agents-init`** es un ecosistema de plantillas inteligentes diseñadas para inicializar proyectos con una arquitectura optimizada para agentes de IA. Este sistema implementa los estándares de **[Agents.md](https://agents.md)** y **[Agents Skills](https://agentskills.io)**.

Este repositorio no solo organiza archivos; inyecta un **"Cerebro Operativo"** en tu espacio de trabajo.

---

## 📂 Blueprints Disponibles

| Stack | Enfoque Principal | Estándares Clave |
| :--- | :--- | :--- |
| **🐹 Go** | Concurrencia, simplicidad y tipado fuerte. | Standard Layout, `golangci-lint`. |
| **🚀 Astro** | Performance extrema e Islands Architecture. | Static-first, SEO, `astro:assets`. |
| **☕ Java** | Robustez empresarial y Clean Architecture. | JDK 21+, Virtual Threads, JUnit 5. |
| **🌙 Neovim** | Plugins y entornos tipo **Kore.nvim**. | LuaJIT, Lazy-loading, UI Harmony. |
| **🐚 Base** | Cascarón universal para cualquier otro stack. | Prototipado rápido y modular. |

---

## 🚀 Instalación Rápida

1.  **Clona este repositorio** en tu carpeta de configuraciones preferida (ej. `~/agents-init`):
    ```bash
    git clone https://github.com/devlcp/agents-init.git ~/agents-init
    ```

2.  **Instala el script de inicialización** en tu PATH:
    ```bash
    # Crea un enlace simbólico para acceso global
    sudo ln -s ~/agents-init/agents-init.sh /usr/local/bin/kore-init (o ~/.local/bin/agents-init para instalación sin sudo)
    chmod +x /usr/local/bin/agents-init
    ```

---

## 🛠️ Modo de Uso

Para iniciar un nuevo proyecto (ej. un microservicio en Go):

1.  **Ejecuta el comando:**
    ```bash
    agents-init mi-proyecto-go go
    ```
    *Esto creará la carpeta `mi-proyecto-go/` e inyectará la carpeta `.agents/` configurada específicamente para Go.*

2.  **Entra a tu proyecto:**
    ```bash
    cd mi-proyecto-go
    ```

---

## 🤖 ¿Qué hacer después? (Activación de la IA)

Una vez que los archivos están en tu proyecto, debes despertar a los agentes para que configuren el workspace:

### 1. Invoca a tu Agente de IA
Abre tu editor con soporte para IA (Antigravity, CodeCompanion en Neovim, Cursor, etc.).

### 2. Ejecuta el Setup Wizard
Dile a la IA la siguiente instrucción maestra:
> *"Analiza la carpeta `.agents/` y ejecuta la skill **Project_Bootstrapper**."*

### 3. La Entrevista de Configuración
La IA leerá el archivo `setup.md` y comenzará una entrevista técnica paso a paso:
* Definirá el propósito exacto del proyecto.
* Configurará los validadores (Linters) y el entorno de ejecución.
* Ajustará los parámetros de acuerdo a tus necesidades específicas.

### 4. Autodestrucción y Limpieza
Al finalizar la configuración, la IA:
1.  Completará el archivo `AGENTS.md` con la información técnica real.
2.  **Eliminará la skill de setup** automáticamente para mantener el repositorio limpio de herramientas de andamiaje.
3.  Te entregará un entorno listo para desarrollar bajo estándares de nivel Senior.

---

## 📜 Reglas de Oro
* **Atomicidad:** Cada cambio sugerido por la IA debe ser un commit independiente.
* **Modularidad:** Si una funcionalidad crece, se encapsula como una **Skill** en `.agents/skills/`.
* **Contexto Sagrado:** El archivo `AGENTS.md` es la ley. La IA debe priorizar este archivo sobre su entrenamiento general.

---

### Contribución y Nuevos Stacks
Para añadir un nuevo stack, copia la carpeta `.agents` de `base-shell` a una nueva carpeta de lenguaje y personaliza las reglas técnicas. ¡Mantén el sistema evolucionando!
