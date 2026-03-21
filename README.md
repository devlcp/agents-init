# 🤖 agents-init: Scaffolding de Ingeniería de Élite

`agents-init` es un sistema de gobernanza técnica diseñado para transformar cualquier LLM (Ollama, Gemini, Claude) en un **Arquitecto Senior** mediante el patrón **ADRV** y una arquitectura de **Carga Diferida (Lazy-Loading)**.

Este ecosistema permite generar código de alta precisión en cualquier lenguaje, optimizando el consumo de tokens y garantizando estándares de calidad industrial.

---

## ✨ Características Principales

* **🏗️ Patrón ADRV:** Obliga a la IA a seguir un ciclo riguroso: **A**nalyze, **D**raft, **R**efactor y **V**alidate.
* **🎓 Modo Mentor Adaptativo:** El sistema ajusta su lenguaje según tu nivel (Junior a Senior), ofreciendo contextos y ejemplos solo cuando son necesarios.
* **🌍 Integración Inteligente:** Detecta tu stack actual mediante **Discovery Phase** y ajusta las reglas de gobernanza automáticamente.
* **📉 Eficiencia de Contexto:** Utiliza **Lazy-Loading** para que la IA solo cargue las habilidades necesarias para la tarea actual, ahorrando hasta un 60% de tokens.
* **🛠️ Scaffolding Agnóstico:** Funciona para Backend, Frontend, Enterprise y System-Tools sin importar el stack tecnológico.
* **🧩 Gobernanza Nativa:** Incluye `AGENTS.md`, `DECISIONS.md` y `STATUS.md` para el registro de decisiones y seguimiento del estado del proyecto.

---

## 🧠 ¿Por qué agents-init?

A diferencia de otros generadores de código, `agents-init` no solo crea archivos; **crea una estructura de pensamiento** para tu IA:

1.  **Elimina Alucinaciones:** Al "groundear" al modelo en un sistema de gobernanza, la IA deja de inventar APIs y se ciñe a tus estándares reales.
2.  **Integración no destructiva:** Usa `--light` para inyectar gobernanza en proyectos existentes sin alterar tu arquitectura.
3.  **Calidad de Nivel Senior:** Forzamos a modelos como Ollama o Gemini a actuar como arquitectos mediante el ciclo **ADRV**, garantizando código refactorizado y validado.
4.  **Autodocumentación:** Registra automáticamente todas las decisiones arquitectónicas.

---

## 🛠️ Instalación

1.  **Clona el repositorio** en tu carpeta de configuraciones:
    ```bash
    git clone https://github.com/devlcp/agents-init.git ~/.config/agents-init
    ```
2.  **Crea el alias** según tu shell:

    **Bash / Zsh:**
    ```bash
    alias agents-init='~/.config/agents-init/agents-init.sh'
    ```

    **Fish:**
    ```fish
    alias agents-init='~/.config/agents-init/agents-init.sh' && funcsave agents-init
    ```

---

## 🚀 Flujo de Trabajo

### 1. Inicialización del Proyecto
Ejecuta el script indicando la categoría de arquitectura (opcionalmente la ruta).

**Modo Completo:**
```bash
# Uso: agents-init [PROJECT_PATH] <CATEGORY>
agents-init ./mi-proyecto backend
```

**Modo Ligero (Para proyectos existentes):**
```bash
agents-init ./mi-proyecto-existente --light
```

### 2. Protocolo de Activación
Para iniciar la configuración del proyecto y activar la gobernanza, puedes forzar la activación ejecutando:

```bash
bash ./.agents/activate.sh
```

O bien, simplemente dile a tu IA: 
*"Lee el archivo `.agents/skills/internal/setup-wizard/setup.md` y sigue el protocolo definido allí."*

