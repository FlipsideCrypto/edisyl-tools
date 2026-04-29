# Edisyl Skill

Build and run AI agent fleets on the Flipside platform — author agents and skills from YAML, compose them into fleets and teams, and run missions.

## Installation

```bash
npx skills add FlipsideCrypto/edisyl-tools
```

## Requirements

- [Edisyl CLI](https://github.com/FlipsideCrypto/edisyl-tools) installed and authenticated (`edisyl login`)

## What this skill covers

The skill is scoped to the two core authoring/runtime surfaces of edisyl:

### Agent configs and skills

- `edisyl agent init <name>` — scaffold an agent YAML
- `edisyl agent validate <file>` — local schema check
- `edisyl agent push <file>` — deploy or update from YAML
- `edisyl agent pull <org/name>` — pull a deployed agent back to YAML
- `edisyl agent list / describe / delete / run`
- `edisyl skills init / push / pull / list / describe / delete`

### Fleets, teams, and missions

- `edisyl fleet list / get / create / update / delete`
- `edisyl fleet team add / remove` — manage the agent teams that make up a fleet
- `edisyl mission create <fleet> "<prompt>" --follow` — start a mission and stream events
- `edisyl mission status / tree / result / stream`
- `edisyl chat <fleet>` — coordinator chat (or `@<agent-slug>` to target a specific agent)

For everything else (queries, sessions, uploads, api-keys), run `edisyl llm onboard` and follow the CLI's own navigation guide.

## Reference

- [SKILL.md](SKILL.md) — Skill manifest and entry point
- `edisyl llm agents` — full agent authoring guide (lives in the CLI)
- `edisyl llm skills` — full skill authoring guide (lives in the CLI)
