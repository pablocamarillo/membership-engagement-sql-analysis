# Second SQL Learning Milestone — Gym Locations

**Completed lesson: November 1, 2026. Project status: Working On It.**

This records work personally completed and reported by the author. No SQL was executed while preparing these files. The existing database and imported records were not changed.

## Completed work and reported result

- Created the second MySQL table, `membership_analytics.gym_locations`.
- Discovered a data-type mismatch: CSV identifiers include `gym_1`, so an integer primary key was inappropriate.
- Learned `ALTER TABLE` and corrected the primary-key column to `VARCHAR(20)`.
- Removed the one incorrectly imported record whose identifier was `0`.
- Successfully imported the gym locations CSV and verified the records with SELECT and COUNT.
- Final reported row count: **10 gym locations**. Individual rows were not supplied and are not fabricated here.

## Troubleshooting history — already performed; do not replay

The original table definition used an integer identifier:

```sql
CREATE TABLE gym_locations (
    gym_id INT PRIMARY KEY,
    location VARCHAR(50),
    gym_type VARCHAR(50),
    facilities TEXT
);
```

The initial import inserted one incorrect record with `gym_id = 0`. The author corrected the type:

```sql
ALTER TABLE gym_locations
MODIFY COLUMN gym_id VARCHAR(20);
```

The author then removed the incorrect record:

```sql
DELETE FROM gym_locations
WHERE gym_id = '0';
```

These are historical recovery steps, not instructions to run against the now-correct database. The existing primary-key constraint is retained when the column type is modified; the fresh-setup definition declares it explicitly. The lesson illustrates why source identifiers should be inspected before choosing column types. No unreported SQL mode, error message, warning code, or additional cleanup is assumed.

## Reproducible record

For a separate fresh environment with `membership_analytics` selected, review these scripts in order:

1. [04_create_gym_locations.sql](../schema/04_create_gym_locations.sql): corrected final table definition, using `VARCHAR(20)` from the start.
2. [05_import_gym_locations.sql](../schema/05_import_gym_locations.sql): the author's successful import statement.
3. [06_verify_gym_locations.sql](../schema/06_verify_gym_locations.sql): the author's SELECT and COUNT queries; reported count 10.

Do not rerun creation or import on the existing populated table. The import is not idempotent. Its absolute Windows path identifies the client-side CSV on Quantum and must be adapted elsewhere. It uses comma-delimited fields, optional double quotes, LF line endings, and one header row. LOCAL support must be available in the client and server; no configuration change is included. Raw CSV contents and credentials are excluded.

## Still to do

- Create the users table and import 5,000 users.
- Create the check-ins table and import 300,000 check-ins.
- Establish and validate relationships.
- Begin membership engagement analysis.

Those counts are planned import targets supplied by the author, not completed or independently validated imports. The overall project remains **Working On It**. See the [project plan](project_plan.md).
