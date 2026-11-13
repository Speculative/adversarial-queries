# GREMLIN Stack queries for DuckDB

This collection contains 164 queries, each with one witness join order.
It combines the absolute and relative runtime-advantage rankings.

- `N.sql` contains the query with concrete predicate values and join conditions.
- `N_witness.sql` contains the same query with a specified join order for DuckDB.
- [manifest.csv](manifest.csv) maps the 286 ranking entries to these files using
  `ranking`, `rank`, `query_file`, and `witness_file`.

File numbers are identifiers, not ranks. Filenames in the manifest are relative
to this directory. See the [benchmark guide](../README.md) for ranking definitions
and instructions for the other collections.

## Execution

Use a DuckDB database loaded with the Stack benchmark dataset and
[schema](../../workload/stack/schema.sql). From the repository root:

```sh
duckdb stack.duckdb < generated-queries/GREMLIN-Stack-DuckDB/1.sql
duckdb stack.duckdb < generated-queries/GREMLIN-Stack-DuckDB/1_witness.sql
```

Replace `stack.duckdb` with the dataset's database path. The data is not included.
Witnesses set `disabled_optimizers = 'join_order,build_side_probe_side'` before
executing the query. Use a fresh connection for baseline measurements; the
witness settings persist for the connection.

## Query semantics

The baseline and witness in each pair have identical predicates and reference
the same tables. They differ in join order and optimizer settings.

Use the join predicates as supplied. Some joins compare identifiers without a
`site_id` condition; for example, `answer.last_editor_id = so_user.id`. Adding
site conditions changes the benchmark query.
