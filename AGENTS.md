# Membership Analytics Project Instructions

## Learning and scope

The author is learning SQL and will personally write the analysis. Keep the project focused on MySQL 8.4+, relational analysis, and synthetic membership data. Codex may support environment setup, documentation, Git, and debugging. Do not add Python pipelines, applications, dashboards, frameworks, or dependencies without an explicit request.

Preserve all user-written queries. Never replace the author's SQL with AI-generated alternatives unless explicitly requested. Explain errors and propose focused corrections instead of silently rewriting solutions. Do not create tables, import data, fabricate sample data, or solve analytical exercises merely because they appear in the plan.

## Preserve work

Inspect relevant files and Git status before editing. Never overwrite existing files without approval; explicit requests to update named content authorize only those changes. Preserve unrelated edits, historical notes, and query attempts. Do not delete data, rewrite Git history, or force-push. Inspect existing remote history before publishing. Do not modify unrelated repositories or MySQL configurations, services, passwords, or databases.

## Evidence and status

Never fabricate results, row counts, validated keys, or findings. Expected dataset fields are provisional until actual CSV inspection. Distinguish installed infrastructure, repository publication, imported data, and completed analysis. Maintain accurate status and never mark unfinished milestones complete. Record only work actually performed or explicitly reported; do not infer progress percentages.

Use clear assumptions for estimated revenue, observation dates, inactivity thresholds, and joins. Monthly prices are not payment records; low attendance does not prove churn. The synthetic dataset is not Delta Defense or USCCA customer data.

## Data and credentials

Never commit passwords, tokens, connection secrets, private keys, `.env` files, MySQL internal data directories, dumps, or backups. Enter passwords through secure local prompts; never print them or put them in commands or repository files.

Review the current dataset license and included notices before committing CSVs, and obtain approval to redistribute. Keep original downloads unchanged and ignored by Git. Do not use `git add -f` to bypass the data safeguards without authorization. Scan the staged file list and diff before every commit.

## Organization

Use `schema/` for reviewed MySQL DDL, `sql/01_fundamentals/` for basic exercises, `sql/02_joins/` for relational work, `sql/03_business_analysis/` for business questions, and `sql/04_advanced_sql/` for advanced techniques. Keep verified, concise outputs and interpretation in `results/`, and methodology in `docs/`.

Maintain Markdown links and the repository tree when files change. The `.gitkeep` files only preserve empty folders. Respect the separate Obsidian vault's AGENTS.md whenever updating its existing project note; avoid duplicate notes and preserve history.
