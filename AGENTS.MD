# AGENTS.MD

## Verification and Testing

- Do not run verification or test steps by default while making changes.
- Run verification and tests only when the user explicitly requests them.
- When requested, perform verification and tests against all changes made so far, not just the most recent change.

## Development Workflow

- For all future code changes in this project, keep the frontend open in the Codex app browser panel while working.
- When frontend-visible changes are made, keep the browser panel available so the user can inspect changes in real time during development.

## Shell

- Use Command Prompt (`cmd.exe`) as the default shell for this project instead of PowerShell.
- When running package scripts or local commands, prefer `.cmd` executables where applicable, such as `npm.cmd`.
