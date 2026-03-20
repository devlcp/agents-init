# 🛠️ Skill: Git_Flow_Optimizer

## 🎯 Objective
Automate and standardize the version control process ensuring that every commit is high quality, follows **Conventional Commits**, and respects the **ADRV** cycle with a secure branching strategy.

## 🛠️ Execution Protocol (@DevopsSenior)

### 1. Analyze (A)
- **Branch Strategy:** Check current branch (`git branch --show-current`). If on `main`, a secondary branch (`feature/` or `fix/`) MUST be created.
- **Security Audit:** Before creating any new branch, verify its existence on the remote repository with `git ls-remote --heads origin [branch_name]`. If the branch name already exists, request a unique name to avoid conflicts.
- **Status Check:** Verify `git status` to identify modified, staged, and untracked files.
- **Atomic Grouping:** Group changes logically. If there are multiple unrelated changes, propose splitting them into atomic commits.
- **Secret Check:** Ensure no sensitive files (e.g., `.env`, credentials) are staged.

### 2. Draft (D)
- **Branch Creation:** If on `main`, perform `git checkout -b [new_branch_name]`.
- **Staging:** Stage the necessary files (`git add`).
- **Commit Message:** Propose a message following the format: `<type>(<scope>): <description>`.
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
- **No Direct Main:** NEVER commit directly to `main` unless it's a minor documentation fix (README.md) or explicitly approved.
- **No Duplicate Branches:** Do not proceed if the branch name is already present on the remote `origin`.
- **No Yapping in Messages:** Keep commit titles under 50 characters when possible.
- **No Mega-Commits:** Avoid committing unrelated changes together.
- **No Force Push:** Never use `--force` or `--hard reset` without explicit double confirmation from the user.

## ⚡ Activation Command
"Git Flow: [Summary of work done]"
