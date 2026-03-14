---
title: "Open Contributions Descriptor (OCD)"
date: 2026-02-25T12:33:46+10:00
draft: false
featured: true
weight: 2
aliases:
  - /initiatives/open-countributions-descriptor/
---

The **Open Contributions Descriptor (OCD)** is an open, machine-readable JSON format that lets an organization publish a single, structured description of how it contributes to the open ecosystem.

Instead of scattering information across repository READMEs, standards portals, data catalogs, and policy pages, OCD provides one canonical document that tools and people can discover and consume.

## Core idea

OCD gives every organization a predictable discovery endpoint:

`https://<organization-domain>/.well-known/open-contributions.json`

This makes openness easier to index and automate for catalogs, dashboards, procurement checks, ecosystem mapping, and public transparency efforts.

## What can be described

An OCD document can cover multiple domains of openness:

- **Organization metadata** (identity, links, high-level context)
- **Open source software projects** (repositories, licenses, status, docs, governance)
- **Open data publications** (datasets, formats, licenses, APIs)
- **Open standards participation** (working groups, drafts, implementations)
- **Machine-consumable interfaces** (for example OpenAPI descriptors)

## Why this matters

Organizations can be open in many ways, but discovery is often fragmented and hard to automate. OCD helps by making openness:

- **Discoverable**: one well-known URL
- **Interoperable**: shared schema and expected fields
- **Automatable**: easy to validate, ingest, and monitor

This approach is inspired by established metadata practices such as `security.txt`, OpenAPI, SBOM ecosystems, and Mozilla's historical `contribute.json` initiative.

## Practical implementation guide

1. **Create your descriptor** in JSON.
2. **Validate it against the official schema**.
3. **Publish it under `/.well-known/open-contributions.json`** on your primary domain.
4. **Link to source repositories and governance docs** so consumers can verify and navigate quickly.
5. **Keep lifecycle fields up to date** (active, archived, disabled, etc.).

## Minimal example

```json
{
  "organization": {
    "name": "Example Org",
    "domain": "example.org"
  },
  "openSource": [
    {
      "name": "example-project",
      "repository": "https://github.com/example-org/example-project",
      "license": "MIT",
      "status": "active"
    }
  ]
}
```

## Specification and resources

- Project repository: [ossbase-org/Open-Contributions-Descriptor](https://github.com/ossbase-org/Open-Contributions-Descriptor)
- Format description: [format.md](https://github.com/ossbase-org/Open-Contributions-Descriptor/blob/main/format.md)
- JSON Schema: [ocd-schema.json](https://github.com/ossbase-org/Open-Contributions-Descriptor/blob/main/schema/ocd-schema.json)
- Example discovery endpoint (MISP): [https://www.misp-project.org/.well-known/open-contributions.json](https://www.misp-project.org/.well-known/open-contributions.json)

## Compatibility and extensions

The format is designed for forward compatibility:

- Consumers should ignore unknown fields.
- Publishers may add organization-specific data under `extensions`.

This keeps the core interoperable while allowing experimentation and ecosystem-specific metadata.
