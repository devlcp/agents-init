# 🛠️ Skill: Git_Flow_Optimizer

## 🎯 Objective
Automate and standardize the version control process ensuring that every commit is high quality, follows **Conventional Commits**, and respects the **ADRV** cycle.

## 🛠️ Execution Protocol (@DevopsSenior)

### 1. Analyze (A)
- Verify `git status` to identify modified, staged, and untracked files.
- Group changes logically. If there are multiple unrelated changes, propose splitting them into atomic commits.
- Check for sensitive files (e.g., `.env`, credentials) and ensure they are ignored.

### 2. Draft (D)
- Stage the necessary files (`git add`).
- Propose a commit message following the format: `<type>(<scope>): <description>`.
- Types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`.

### 3. Refactor (R)
- Review the proposed commit message for clarity and conciseness.
- Ensure it explains the "why" if the change is complex.
- Validate that the commit complies with the **Zero-Trust** rule (must be refactored once before presentation).

### 4. Validate (V)
- Execute the commit: `git commit -m "..."`.
- If requested, prepare for push: `git push origin [branch]`.
- Report the final status of the working tree.

## 🚫 Forbidden Patterns
- **No Yapping in Messages:** Keep commit titles under 50 characters when possible.
- **No Mega-Commits:** Avoid committing unrelated changes together.
- **No Force Push:** Never use `--force` or `--hard reset` without explicit double confirmation from the user.

## ⚡ Activation Command
"Git Flow: [Summary of work done]"
