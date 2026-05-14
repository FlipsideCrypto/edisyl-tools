# Edisyl Skill

Build and run AI agent fleets on the Flipside platform — author agents and skills from YAML, compose them into fleets and teams, run missions, connect data warehouses, and drive Stratum natural-language → SQL resolve and indexing.

## Installation

```bash
npx skills add FlipsideCrypto/edisyl-tools
```

## Requirements

- [Edisyl CLI](https://github.com/FlipsideCrypto/edisyl-tools) installed and authenticated (`edisyl login`)

## What this skill covers

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
- `edisyl issue <mission-id> <issue-id>` — drill into a sub-issue
- `edisyl chat <fleet>` — coordinator chat (or `@<agent-slug>` to target a specific agent)

### Data sources

- `edisyl data-sources test-connection` — validate connector creds before saving
- `edisyl data-sources create` — atomically kicks introspect + Stratum enrichment
- `edisyl data-sources list / get / test / delete`
- `edisyl data-sources introspect <id>` — rediscover tables only
- `edisyl data-sources enrich <id>` — full or scoped re-enrichment

Supported connectors: Snowflake, Postgres, BigQuery, Databricks, Redshift, MySQL.

### Stratum — NL→SQL resolve + indexing

- `edisyl stratum resolve "<question>" -d <ds> [--wait --rows N]` — end-to-end resolve
- `edisyl stratum status / indexes / versions` — snapshot + index health
- `edisyl stratum list <kind> / doc <kind> <id>` — enumerate indexed docs
- `edisyl stratum verbatim / variant / vector-search / preseed / search / search-preview` — debug what each cascade tier sees
- `edisyl stratum reindex / reindex-gt / rebuild / gc` — index lifecycle
- `edisyl stratum candidates list / approve / reject` — review optimizer enrichment edits
- `edisyl stratum models list / readiness / optimize / optimize-all` — per-model readiness + re-enrichment
- `edisyl stratum resolutions list / get / steps`, `edisyl stratum trace <id>` — browse past resolves and diagnose them

For everything else (queries, sessions, uploads, api-keys), run `edisyl llm onboard` and follow the CLI's own navigation guide.

## Reference

The heavy reference content lives inside the CLI and stays in sync with the deployed version:

- [SKILL.md](SKILL.md) — Skill manifest and entry point
- `edisyl llm onboard` — top-level CLI navigation
- `edisyl llm agents` — full agent authoring guide
- `edisyl llm skills` — full skill authoring guide
- `edisyl llm data-sources` — connecting warehouses + introspect/enrich pipeline
- `edisyl llm stratum` — NL→SQL resolve, indexing, cascade debugging, curation
- `edisyl llm queries` — direct SQL
- `edisyl llm reports` — visualizations and the `data_visualization` skill
