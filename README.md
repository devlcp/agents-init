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

## 🛠️ Instalación

1.  **Clona el repositorio** en tu carpeta de configuraciones:
    ```bash
    git clone https://github.com/devlcp/agents-init.git ~/.config/agents-init
    ```
2.  **Crea el alias** en tu `.bashrc` o `.zshrc`:
    ```bash
    alias agents-init='~/.config/agents-init/agents-init.sh'
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
