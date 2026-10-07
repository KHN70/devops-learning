# Core Bash Scripting Challenges

A collection of foundational Bash scripts demonstrating automation, defensive scripting, and user input validation.

## Scripts Overview

| Script | Description | Key Mechanics |
| :--- | :--- | :--- |
| `calculator.sh` | CLI calculator supporting basic operations | Arithmetic expansion `$(( ))`, zero-division checks |
| `file_ops.sh` | Automated directory and file creation | State checking (`-d`, `-f`), safe navigation (`cd || exit 1`) |
| `file_checker.sh` | Path validation and permission auditor | Guard clauses, permission flags (`-r`, `-w`, `-x`) |
| `backup.sh` | Timestamped `.txt` file backup utility | Path validation, `date` formatting, pipelines (`wc -l`) |

## Running the Scripts

Ensure scripts have execute permissions:
```bash
chmod +x *.sh
