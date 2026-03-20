# 📂 project_context.md: Ecosistema agents-init

## 🎯 1. Visión Actual del Proyecto
**`agents-init`** es una plataforma de gobernanza técnica diseñada para transformar Modelos de Lenguaje (LLMs) en **Arquitectos de Software Senior**. Su propósito es doble:
1.  **Ingeniería de Precisión:** Garantizar que el código generado siga estándares industriales de seguridad y arquitectura, sin importar el lenguaje de programación.
2.  **Mentoría Pedagógica:** Actuar como un guía que adapta su complejidad al nivel del usuario (Junior a Senior), explicando el "porqué" de las decisiones técnicas.

---

## 🛠️ 2. Decisiones Técnicas Tomadas

### **Metodología ADRV**
Se ha estandarizado el ciclo **ADRV (Analyze, Draft, Refactor, Validate)** como el motor de ejecución obligatorio. Esto asegura que la IA nunca entregue código sin antes analizar riesgos, refactorizar patrones y validar resultados.

### **Arquitectura de Carga Diferida (Lazy-Loading)**
Para combatir el alto costo de tokens y la pérdida de foco en modelos locales (Ollama/Qwen), el sistema solo carga el contenido de las habilidades ("skills") bajo demanda. El archivo `AGENTS.md` funciona únicamente como un mapa de bits/índice de alta velocidad.

### **Centralización Quirúrgica**
Se decidió unificar todas las preguntas de configuración en un solo archivo maestro (`master_questions.md`) categorizado por dominios (Backend, Frontend, etc.). El script de inicialización filtra este archivo mediante herramientas de shell (`sed`) para inyectar solo la información necesaria.

### **Master Skill: ECO_MGR**
Se fusionaron las antiguas funciones de "fábrica" y "auditoría" en una sola entidad inteligente llamada **`ECO_MGR`**. Este componente es el responsable único de crear nuevas habilidades, auditarlas bajo el estándar ADRV e indexarlas en la constitución del proyecto.

---

## 🚦 3. Estado de las Funcionalidades

| Funcionalidad | Estado | Descripción |
| :--- | :--- | :--- |
| **`agents-init.sh`** | ✅ Completado | Script portátil con soporte para blueprints, detección de ruta y validación de redundancia. |
| **`agents-skill.sh`** | ✅ Completado | Script portátil para creación de skills con alineación ADRV automática. |
| **`Blueprints Architecture`** | ✅ Completado | Estructura modular `blueprints/_base` y overlays por categoría (Backend, etc.). |
| **Git Integration** | ⏳ Pendiente | Automatización de commits tras la validación del ciclo ADRV. |

---

## 🚀 4. Próximos Pasos Inmediatos

1.  **Prueba de Estrés en Local:** Ejecutar el `ECO_MGR` en un entorno con Ollama (Qwen 7B) para validar la generación de una skill compleja (ej. migraciones SQL) siguiendo el flujo ADRV.
2.  **Población de Blueprints:** Expandir el registro de habilidades básicas para cada categoría en `shared/base-template`.
3.  **Despliegue de Repositorio:** Subir la estructura final al repositorio de GitHub con el nuevo **README.md** optimizado.

---

> **Última actualización:** 20 de marzo de 2026
> **Responsable:** @FullstackSenior & @QASenior
