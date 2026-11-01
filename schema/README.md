# Database and First Table

The author reported successful creation of `membership_analytics` and `subscription_plans`, a three-row CSV import, and a SELECT on October 31, 2026. Remaining tables, imports, and foreign keys are pending.

| Script | Recorded work |
| --- | --- |
| [01_create_database.sql](01_create_database.sql) | Create the database. |
| [02_create_subscription_plans.sql](02_create_subscription_plans.sql) | Author's table definition, including the plan-name primary key. |
| [03_import_subscription_plans.sql](03_import_subscription_plans.sql) | Author's successful LOAD DATA LOCAL INFILE statement. |

These are lesson records, not an idempotent migration system. Do not recreate the existing database/table or rerun the import. For table, import, and SELECT statements, select `membership_analytics` as the active schema in Workbench first. The author also reported learning USE; the existing local `database_setup.sql` is preserved unchanged and remains untracked.

The import path is the exact successful client-side path on the author's Quantum SSD. Future separate environments must adapt that path. LOCAL must be supported by the client and server; these scripts do not change either configuration. The reported CSV used comma-separated fields, optional double quotes, an LF line delimiter, and one header row. No claim is made that other files use identical settings.

Syntax was reviewed statically for MySQL; no statements were executed during publication. Review the other CSVs before selecting their types, keys, and relationships. See [dataset notes](../data/README.md).
