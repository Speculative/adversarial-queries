# GREMLIN benchmark queries and witnesses

Each collection contains pairs of SQL files:

- `N.sql`: the benchmark query, with plan selection left to the database optimizer.
- `N_witness.sql`: the same query with a specified join order and the engine
  settings needed to enforce it.

| Collection | Query/witness pairs | Manifest |
| --- | ---: | --- |
| [IMDB / DuckDB](GREMLIN-IMDB-DuckDB/) | 220 | [manifest.csv](GREMLIN-IMDB-DuckDB/manifest.csv) |
| [IMDB / PostgreSQL](GREMLIN-IMDB-PostgreSQL/) | 210 | [manifest.csv](GREMLIN-IMDB-PostgreSQL/manifest.csv) |
| [Stack / DuckDB](GREMLIN-Stack-DuckDB/) | 164 | [manifest.csv](GREMLIN-Stack-DuckDB/manifest.csv) |

The benchmark data is not included. Queries require the corresponding dataset
and schema: [IMDB](../workload/job/schema.sql) or
[Stack](../workload/stack/schema.sql).

## Rankings and manifests

Each collection combines two 143-entry rankings from the experiments:
`abs` ranks by absolute runtime advantage, and `rel` by relative runtime advantage.
The [source rankings](../analysis/) contain the historical measurements.

Each manifest has 286 rows and four columns:

| Column | Meaning |
| --- | --- |
| `ranking` | `abs` or `rel` |
| `rank` | One-based position within that ranking |
| `query_file` | Query filename, relative to the manifest's directory |
| `witness_file` | Witness filename, relative to the manifest's directory |

File numbers are identifiers, not ranks. A query present in both rankings has
a row for each ranking, pointing to the same query and witness files.

## Running queries

Run queries against a database loaded with the corresponding benchmark dataset.
For example, from the repository root:

```sh
duckdb stack.duckdb < generated-queries/GREMLIN-Stack-DuckDB/1.sql
duckdb stack.duckdb < generated-queries/GREMLIN-Stack-DuckDB/1_witness.sql
psql -d imdb -f generated-queries/GREMLIN-IMDB-PostgreSQL/1.sql
psql -d imdb -f generated-queries/GREMLIN-IMDB-PostgreSQL/1_witness.sql
```

Replace `stack.duckdb` and `imdb` with the database path or name in the benchmark
environment. DuckDB witnesses disable `join_order` and `build_side_probe_side`;
PostgreSQL witnesses set `join_collapse_limit = 1`. These settings persist for
the connection. Use a fresh connection for each baseline measurement.

See the [Stack collection notes](GREMLIN-Stack-DuckDB/README.md) for Stack-specific
query semantics.
