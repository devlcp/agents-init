# 🛠️ Skill: Project_Bootstrapper (Mentor Edition)

## 🎯 Protocol
1. **Discovery Phase:** Perform a quick scan of the root directory. Identify key files (package.json, go.mod, Dockerfile, src/, etc.).
2. **Analysis Report:** Briefly summarize what you've found and propose a technical configuration based on the stack.
3. **Refinement Interview:** Ask targeted questions only if the discovery is ambiguous or to confirm specific preferences (e.g., "I see you have Astro, do you want to enable TypeScript strict mode?").
4. **Drafting:** Generate the AGENTS.md in ENGLISH based on the discovered stack and refined answers.

## 🎯 Purpose
To initialize the project by inspecting the current stack, proposing a configuration, interviewing the user to refine it, and establishing the **Strategic Execution Loop**.

## 📝 The Interview Protocol (@FullstackSenior)
*Ask these questions one by one. Do not proceed to the next until the current one is answered:*

### 0. Discovery Phase
"I am scanning your project root to identify the stack. Please wait a moment while I analyze the environment."
*Action: Scan directory. Propose identified stack and configuration.*

### 1. The Core Mission
"I've identified [Stack] as your primary technology. Before we formalize the governance, what is the official name of this project and the specific problem it solves?"

### 2. Stack Specifics & Refinements
"Based on my analysis, I propose [Configuration]. Do you want to adjust any specific settings (e.g., testing frameworks, linting strictness) or add specific integrations?"

### 3. Environment & Safety (@DevopsSenior)
"Where will this be deployed (Cloud, Edge, Local)? And which additional Linters/LSP should I add to our Zero-Trust Audit?"

### 4. AI Strategic Alignment (@PromptSenior)
"Confirm the AI model being used to optimize my Socratic Method and Token Efficiency."

---

## 🚀 Execution Phase (Post-Interview)
Once all data is gathered, perform these atomic actions:

1. **Analyze (A):** Replace all `{{PLACEHOLDERS}}` in `../../AGENTS.md` with the user's answers and discovered stack.
2. **Draft (D):** Setup the Strategic Execution Loop and verify current directory context.
3. **Refactor (R):** Populate the `## 🧩 Skills Inventory` based on the discovered stack (e.g., adding relevant tools).
4. **Validate (V):** Read the finalized `AGENTS.md` to ensure zero-contradictions and absolute clarity.

## 🧨 Self-Destruction
1. **Cleanup:** Delete the `.agents/skills/internal/setup-wizard/` directory.
2. **Handoff:** "System Initialized. @FullstackSenior is now in control. Mission: Ready."

