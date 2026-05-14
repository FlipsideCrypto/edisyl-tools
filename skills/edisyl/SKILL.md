---
name: edisyl
description: |
  Build and run AI agent fleets on the Flipside platform, connect data
  warehouses, and resolve natural-language analytics questions through Stratum.
  Use when authoring agents and skills from YAML, composing them into fleets
  and teams, starting missions, connecting a data source (Snowflake, Postgres,
  BigQuery, Databricks, Redshift, MySQL), or driving Stratum NL→SQL resolve
  and indexing.
  Requires the Edisyl CLI (https://github.com/FlipsideCrypto/edisyl-tools).
compatibility: Requires edisyl CLI installed and authenticated (edisyl login)
allowed-tools: Bash(edisyl:*) Read Write
metadata:
  author: flipside
  version: "1.1"
  homepage: https://app.edisyl.com/
---

# Edisyl CLI

First, check the CLI is installed and authenticated:

```bash
edisyl --version
edisyl whoami
```

If the command is missing, install it:

```bash
curl -fsSL https://raw.githubusercontent.com/FlipsideCrypto/edisyl-tools/main/install.sh | sh
```

Then run the in-CLI navigation guide:

```bash
edisyl llm onboard
```

## In-CLI reference (use these for deep reference)

The CLI ships embedded docs that stay in sync with the deployed version. Prefer these over guessing — they're offline, auth-free, and exhaustive.

| Topic | Run |
|---|---|
| **Agents** — author, validate, push, pull, run YAML-defined agents | `edisyl llm agents` |
| **Skills** — package reusable knowledge + tools for agents | `edisyl llm skills` |
| **Data sources** — connect a warehouse, kick the introspect/enrich pipeline | `edisyl llm data-sources` |
| **Stratum** — natural-language → SQL resolve, indexing, cascade debugging, curation | `edisyl llm stratum` |
| **Queries** — direct SQL (rare — agents/Stratum handle this) | `edisyl llm queries` |
| **Reports** — visualizations and the `data_visualization` skill | `edisyl llm reports` |

## The three surfaces

| Surface | What you do | Where to learn more |
|---|---|---|
| **Agents & skills** | Author YAML, validate, push, pull, run | `edisyl llm agents` · `edisyl llm skills` |
| **Fleets, teams, missions** | Compose agents into fleets, run missions, chat | `edisyl llm onboard` |
| **Data sources & Stratum** | Connect a warehouse, then resolve NL questions to SQL | `edisyl llm data-sources` · `edisyl llm stratum` |

Global flags worth knowing: `-j/--json` (every command), `-p/--profile`, `-e local|staging|prod` (endpoint override), `-v` (verbose request/response logging).

## Common one-liners

```bash
# Agents & skills
edisyl agent init <name> && edisyl agent push <file>
edisyl skills init <name> && edisyl skills push <file>

# Fleets + missions
edisyl fleet list
edisyl mission create <fleet> "<prompt>" --follow
edisyl mission tree <id>
edisyl chat <fleet>                   # @<agent-slug> to target one agent

# Data source onboarding
edisyl data-sources test-connection --type postgres --config-file db.json
edisyl data-sources create --name "Demo" --type postgres --config-file db.json
edisyl stratum status -d <data-source-id>

# Stratum resolve + diagnose
edisyl stratum resolve "<question>" -d <ds> --wait --rows 5
edisyl stratum trace <resolution-id>
edisyl stratum candidates list
```

When in doubt, run the matching `edisyl llm <topic>` for the exhaustive reference.
