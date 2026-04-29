---
name: edisyl
description: |
  Build and run AI agent fleets on the Flipside platform. Use when authoring
  agents and skills from YAML, composing them into fleets and teams, or
  starting and following missions on a fleet.
  Requires the Edisyl CLI (https://github.com/FlipsideCrypto/edisyl-tools).
compatibility: Requires edisyl CLI installed and authenticated (edisyl login)
allowed-tools: Bash(edisyl:*) Read Write
metadata:
  author: flipside
  version: "1.0"
  homepage: https://app.edisyl.com/
---

# Edisyl CLI

First, check if the CLI is installed:

```bash
edisyl --version
```

If the command is not found, install it:

```bash
curl -fsSL https://raw.githubusercontent.com/FlipsideCrypto/edisyl-tools/main/install.sh | sh
```

Then get started:

```bash
edisyl llm onboard
```

The CLI's onboarding tree covers the focus areas of this skill:

- **Agent configs** — `edisyl llm agents` · `agent init/validate/push/pull/list/describe/delete/run`
- **Skills** — `edisyl llm skills` · `skills init/push/pull/list/describe/delete`
- **Fleets, teams, missions** — `fleet list/get/create/update/delete`, `fleet team add/remove`, `mission create --follow`, `mission tree`, `mission result`, `chat <fleet>`
