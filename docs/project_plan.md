# Project Plan

**Working On It — Second SQL Learning Milestone**

The author will personally write the SQL. Codex supports setup, documentation, Git, and explanation/debugging; it does not complete analytical exercises without an explicit request.

## Foundation Verified — October 31, 2026

- [x] MySQL Community Server 26.10.0 and Workbench 26.10.0 installed.
- [x] MySQL service running; localhost port 3306 reachable.
- [x] Authenticated `SELECT VERSION()` succeeded during the preceding server setup in this session. No password was requested again for repository setup.
- [x] Project folders, documentation, and learning safeguards prepared.

Repository publication is verified by Git history and the repository remote. Workbench connectivity was reported successful by the author; this repository setup did not repeat a GUI login or modify any server settings.

## First Hands-on Lesson — Recorded October 31, 2026

- MySQL database `membership_analytics` created.
- First table `subscription_plans` created with a primary key on `subscription_plan`.
- `data/subscription_plans.csv` imported successfully.
- Three subscription records verified and the first SELECT query executed.

Skills reported learned: CREATE DATABASE; USE; CREATE TABLE; VARCHAR, DECIMAL, TEXT; PRIMARY KEY; DESCRIBE; SELECT; COUNT; LOAD DATA LOCAL INFILE; basic SQL troubleshooting.

Evidence: the author supplied the successful statements and three-row output. Publication uses static review only; the database and import were not rerun. See [saved results](../results/README.md). Learning COUNT does not mark all aggregation work complete.

## Second Hands-on Lesson — November 1, 2026

- [x] Create the second table, `gym_locations`.
- [x] Identify the mismatch between an INT identifier and text IDs such as `gym_1`.
- [x] Learn ALTER TABLE and change the primary-key column to VARCHAR(20).
- [x] Remove the incorrectly imported record with `gym_id = '0'`.
- [x] Import the gym locations CSV successfully.
- [x] Verify the records with SELECT and COUNT; final reported count: 10.

Evidence: the author supplied the executed statements and final row count. See [troubleshooting history and reproducible scripts](gym_locations_lesson.md). The corrected CREATE TABLE script represents the final schema, not a claim that this exact corrected CREATE statement was originally executed. No database creation, import, deletion or query was rerun during documentation.

## Phase 1: Database Setup

**In progress — two tables imported; relationships pending**

- [ ] Download and inspect the four CSV files.
- [ ] Validate column names and data types.
- [ ] Design the relational schema using verified keys and grain.
- [x] Create `membership_analytics` — reported successful by the author.
- [x] Create `subscription_plans` with VARCHAR, DECIMAL, TEXT and a PRIMARY KEY.
- [x] Import the subscription plan CSV and verify three records.
- [x] Create/correct gym_locations and import/verify 10 gym locations — reported by the author.
- [ ] Create the users table.
- [ ] Import 5,000 users (planned target; not yet completed or independently validated).
- [ ] Create the check-ins table.
- [ ] Import 300,000 check-ins (planned target; not yet completed or independently validated).
- [ ] Establish and validate relationships.
- [ ] Begin membership engagement analysis.
- [ ] Validate row counts and relationships against the source files.

Completion evidence: inspected source inventory, reviewed schema, import method, and reconciled counts. Existing server installation does not complete this milestone.

## Phase 2: SQL Fundamentals

**In progress — SELECT and COUNT used for import verification**

- [x] SELECT subscription plan names and monthly prices.
- [x] SELECT gym IDs, locations and types, and COUNT the imported gym rows (10).
- [x] Basic SELECT/WHERE filtering for Budget gyms — author-reported completed exercise; see [saved query](../sql/01_fundamentals/02_filter_gym_locations.sql).
- [ ] Sorting — [starter file](../sql/01_fundamentals/03_sort_subscription_plans.sql) saved; the author will write the ORDER BY query.
- [ ] Aggregations
- [ ] GROUP BY and HAVING

Completion evidence: author-written, executed queries in `sql/01_fundamentals/`, with explanations of their results.

## Phase 3: Relational Analysis

**Not started**

- [ ] INNER JOIN
- [ ] LEFT JOIN
- [ ] Multi-table joins
- [ ] Data validation
- [ ] Membership and location comparisons

Completion evidence: validated join behavior, including unmatched records and accidental row multiplication, with queries in `sql/02_joins/` and business questions in `sql/03_business_analysis/`.

## Phase 4: Advanced SQL

**Not started**

- [ ] CTEs
- [ ] Subqueries
- [ ] Window functions
- [ ] Date calculations
- [ ] Engagement segmentation

Completion evidence: author-written queries in `sql/04_advanced_sql/`, explicit observation dates and inactivity definitions, and verified outputs.

## Phase 5: Portfolio Completion

**Not started**

- [ ] Document findings.
- [ ] Organize verified queries.
- [ ] Explain methodology and limitations.
- [ ] Polish the README around actual findings.
- [ ] Publish the final GitHub portfolio project.

Publishing the initial foundation is not completion of the final analytical portfolio. Revenue estimates require assumptions about current membership and plan pricing; inactivity is not evidence of cancellation. Do not report synthetic-data patterns as findings about a real business.
