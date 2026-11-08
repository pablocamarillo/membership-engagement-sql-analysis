# Database and First Two Tables

The author reported successful creation of `membership_analytics` and `subscription_plans`, a three-row CSV import, and a SELECT on October 31, 2026. On November 1, 2026, the author reported correcting the second table gym_locations to use VARCHAR(20) gym IDs, importing 10 gym locations, and verifying SELECT and COUNT. Users, check-ins, and relationships remain pending.

| Script | Recorded work |
| --- | --- |
| [01_create_database.sql](01_create_database.sql) | Create the database. |
| [02_create_subscription_plans.sql](02_create_subscription_plans.sql) | Author's table definition, including the plan-name primary key. |
| [03_import_subscription_plans.sql](03_import_subscription_plans.sql) | Author's successful LOAD DATA LOCAL INFILE statement. |
| [04_create_gym_locations.sql](04_create_gym_locations.sql) | Corrected final definition for a separate fresh setup; VARCHAR(20) primary key. |
| [05_import_gym_locations.sql](05_import_gym_locations.sql) | Author's successful gym locations CSV import; do not rerun locally. |
| [06_verify_gym_locations.sql](06_verify_gym_locations.sql) | Author's SELECT and COUNT verification; reported count 10. |

These are lesson records, not an idempotent migration system. Do not recreate the existing database/table or rerun the import. For table, import, and SELECT statements, select `membership_analytics` as the active schema in Workbench first. The author also reported learning USE; the tracked [database_setup.sql](database_setup.sql) is preserved unchanged. It contains USE, SELECT DATABASE(), SHOW TABLES, and a read-only check of the local_infile setting.

The import path is the exact successful client-side path on the author's Quantum SSD. Future separate environments must adapt that path. LOCAL must be supported by the client and server; these scripts do not change either configuration. The reported CSV used comma-separated fields, optional double quotes, an LF line delimiter, and one header row. No claim is made that other files use identical settings.

Syntax was reviewed statically for MySQL; no statements were executed during publication. Review the other CSVs before selecting their types, keys, and relationships. See [dataset notes](../data/README.md).

The original INT definition, ALTER TABLE correction and DELETE cleanup are preserved only in the [second-lesson history](../docs/gym_locations_lesson.md), separate from the corrected setup script. No SQL was executed while preparing this milestone for review.
