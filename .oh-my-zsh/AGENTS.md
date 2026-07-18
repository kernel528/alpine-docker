# Agent Instructions

Project knowledge lives at:

`~/Projects/Agentic_Engineering/projects/shell-tools/ohmyzsh`

Read before work:
- `project-profile.md`
- `current-work.md`
- `ai-handoff.md`
- `roadmap.md`
- `decisions.md`

## Rules

- Keep changes focused; do not make broad refactors without asking.
- Never commit directly to `main`.
- Use a branch per change.
- Ask before committing and include a suggested commit message.
- Keep committed content safe to publish: no secrets, tokens, private hostnames, or machine-only paths.
- Do not merge PRs unless specifically directed.

## Fork Guidance

- This is a personal fork of upstream `ohmyzsh/ohmyzsh`.
- Prefer custom work under `custom/`.
- Avoid editing upstream-owned `lib/`, `plugins/`, `themes/`, `tools/`, and `templates/` unless explicitly requested.
- Keep upstream sync work separate from customization work.

## Validation

- For zsh changes, run syntax checks on touched files.
- For startup behavior, run `zsh -i -c exit` or equivalent.
- Validate missing optional tools do not break startup.

## Session Close

- Update `~/Projects/Engineering/projects/shell-tools/ohmyzsh/ai-handoff.md`.
