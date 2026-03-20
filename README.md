# 🤖 agents-init: Scaffolding de Ingeniería de Élite

`agents-init` es un sistema de gobernanza técnica diseñado para transformar cualquier LLM (Ollama, Gemini, Claude) en un **Arquitecto Senior** mediante el patrón **ADRV** y una arquitectura de **Carga Diferida (Lazy-Loading)**.

Este ecosistema permite generar código de alta precisión en cualquier lenguaje, optimizando el consumo de tokens y garantizando estándares de calidad industrial.

---

## ✨ Características Principales

* **🏗️ Patrón ADRV:** Obliga a la IA a seguir un ciclo riguroso: **A**nalyze, **D**raft, **R**efactor y **V**alidate.
* **🎓 Modo Mentor Adaptativo:** El sistema ajusta su lenguaje según tu nivel (Junior a Senior), ofreciendo contextos y ejemplos solo cuando son necesarios.
* **🌍 Multilingüe (Setup):** Entrevista de configuración en tu idioma preferido (En/Es), manteniendo el repositorio técnico en inglés estandarizado.
* **📉 Eficiencia de Contexto:** Utiliza **Lazy-Loading** para que la IA solo cargue las habilidades necesarias para la tarea actual, ahorrando hasta un 60% de tokens.
* **🛠️ Scaffolding Agnóstico:** Funciona para Backend, Frontend, Enterprise y System-Tools sin importar el stack tecnológico.

---

## 🧠 ¿Por qué agents-init?

A diferencia de otros generadores de código, `agents-init` no solo crea archivos; **crea una estructura de pensamiento** para tu IA:

1.  **Elimina Alucinaciones:** Al "groundear" al modelo en un sistema de gobernanza (`AGENTS.md`), la IA deja de inventar APIs y se ciñe a tus estándares reales.
2.  **Ahorro de Tokens (Costo y Velocidad):** Mediante la arquitectura **Lazy-Loading**, solo se inyecta el contexto necesario para la tarea actual.
3.  **Calidad de Nivel Senior:** Forzamos a modelos como Ollama o Gemini a actuar como arquitectos mediante el ciclo **ADRV**, garantizando código refactorizado y validado.
4.  **Independencia del Stack:** Funciona igual de bien para un microservicio en Go que para un plugin de Neovim o una app en Astro.

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
Ejecuta el script indicando la categoría de arquitectura (opcionalmente la ruta):
```bash
# Uso: agents-init [PROJECT_PATH] <CATEGORY>
# Categorías: backend, frontend, enterprise, system-tools, custom

# En la carpeta actual:
agents-init backend

# En una ruta específica:
agents-init ./mi-proyecto backend
```
