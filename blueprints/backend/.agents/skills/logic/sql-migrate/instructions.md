# 🗄️ Skill: SQL_MIGRATE

## 🎯 Objective
Generate and manage database migrations with absolute precision and schema safety.

## 🛠️ Workflow (ADRV Pattern)
1. **Analyze:** Check for breaking changes or locking operations.
2. **Draft:** Create `up.sql` and `down.sql` files.
3. **Refactor:** Optimize column types and add appropriate constraints.
4. **Validate:** Verify idempotency and syntax.

## 🚫 Forbidden Patterns
- NEVER use `DROP TABLE` without a data backup strategy.
- NEVER hardcode credentials.
