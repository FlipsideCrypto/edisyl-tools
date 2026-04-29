# Edisyl Tools

CLI installer and AI assistant skill for [Edisyl](https://app.edisyl.com/) — Flipside's platform for building and running AI agent fleets.

## Installation

### 1. Install the Skill

Add the Edisyl skill to your AI coding assistant:

```bash
npx skills add FlipsideCrypto/edisyl-tools
```

Or manually copy `skills/edisyl/` to your `.claude/skills/` directory.

### 2. Install the CLI

```bash
curl -fsSL https://raw.githubusercontent.com/FlipsideCrypto/edisyl-tools/main/install.sh | sh
```

### 3. Authenticate

```bash
edisyl login
```

Verify your setup:

```bash
edisyl whoami
```

## Quick Start

The best way to use Edisyl is through an AI coding assistant like [Claude Code](https://claude.ai/code). The skill teaches your assistant the two core surfaces of edisyl:

1. **Agent configs and skills** — author and deploy from YAML
2. **Fleets, teams, and missions** — compose deployed agents into fleets and run multi-agent missions

### Using with Claude Code

1. Open Claude Code in any directory
2. Ask about fleets and missions:

```
"List the fleets in my org and run a mission on the analytics fleet to summarize last week's USDC activity."
```

```
"Author a new agent that classifies wallet behavior, validate it, and push it."
```

```
"Add the wallet-watcher agent to the analytics-fleet team."
```

Claude Code will use the Edisyl skill to:
- Discover fleets and their teams
- Author/validate/push agent and skill YAML
- Start missions and follow their plan trees

### Direct CLI Usage

You can also drive the CLI directly:

```bash
# Authoring
edisyl agent init my-agent
edisyl agent push agent.yaml
edisyl skills init my-skill
edisyl skills push skill.yaml

# Fleets and teams
edisyl fleet list
edisyl fleet team add <fleet-id> --team <team-id>

# Missions and chat
edisyl mission create <fleet> "Summarize USDC activity last week" --follow
edisyl mission tree <mission-id>
edisyl chat <fleet>
```

For everything else (queries, sessions, uploads, api-keys), run:

```bash
edisyl llm onboard
```

## How the Skill Works

When you install the Edisyl skill, your AI assistant learns:

1. **Where to start**: `edisyl llm onboard` — the navigation guide built into the CLI
2. **Agent and skill authoring**: `edisyl llm agents`, `edisyl llm skills`
3. **Fleet/mission orchestration**: how to compose teams, kick off missions, follow plan trees

The skill is intentionally lean — the heavy reference content lives inside the CLI itself via `edisyl llm <topic>`, so it stays in sync with the deployed CLI version.

## What's in This Repo

```
edisyl-tools/
├── skills/
│   └── edisyl/         # AI assistant skill for fleets + agent/skill authoring
│       ├── SKILL.md    # Main skill definition
│       ├── README.md   # Skill overview
│       ├── metadata.json
│       └── scripts/    # check-auth.sh
├── install.sh          # CLI installer
└── README.md
```

## Updating

Check for skill updates:

```bash
npx skills check
```

Update to the latest version:

```bash
npx skills update
```

Update the CLI:

```bash
edisyl update         # latest stable
edisyl update --dev   # latest dev build
```

## Source

The CLI is built from `go/cmd/edisyl/` in [FlipsideCrypto/mono](https://github.com/FlipsideCrypto/mono). Releases are produced by the `Release edisyl CLI` workflow on tag `edisyl-v*`.

## License

MIT
