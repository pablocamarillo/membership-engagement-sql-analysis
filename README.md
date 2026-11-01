# Membership Engagement & Revenue Analytics

A MySQL learning and portfolio project exploring synthetic gym membership activity.

**Working On It — Second SQL Learning Milestone**

## Project Overview

This project will use SQL and relational data to explore membership engagement, gym utilization, subscription plan distribution, and estimated recurring revenue. It is Pablo Camarillo's second data analytics portfolio project, following [Milwaukee Property Sales Analysis](https://github.com/pablocamarillo/milwaukee-property-sales-analysis), which focused on Python, Pandas, Matplotlib, and Excel.

The data is synthetic. It is not actual Delta Defense or USCCA customer information, and this independent learning project is not affiliated with either organization.

## Business Objective

Understand how a membership-based organization can use relational data to evaluate customer activity and support operational decisions. The focus is practical SQL analysis relevant to data analyst internships and membership services.

## Dataset

[Gym Check-ins and User Metadata](https://www.kaggle.com/datasets/mexwell/gym-check-ins-and-user-metadata), published by **mexwell** on Kaggle, is described as synthetic. Kaggle metadata lists **CC0: Public Domain**, verified October 31, 2026. No CSVs are included in this repository.

| Expected entity | Potential role and relationship |
| --- | --- |
| Users | Member attributes and subscription plan; `user_id` may link to attendance records. |
| Gym Locations | Location attributes; `gym_id` may link to attendance records. |
| Check-in/Checkout History | Visits potentially linking users and gyms, with timestamps and workout attributes. |
| Subscription Plans | Monthly plan price and features; plan name may link to Users. |

The `subscription_plans` and `gym_locations` tables are implemented with primary keys, with three subscription records and 10 gym locations reported imported. The users and check-ins tables and their imports remain pending, along with relationship design and validation. See [dataset documentation](data/README.md).

## Technologies

- **MySQL 8.4+** — relational storage and query execution; local server detected: 26.10.0.
- **MySQL Workbench** — SQL editor and local connection management; installed version: 26.10.0.
- **SQL** — the primary analysis language; queries are written by the project author.
- **Git and GitHub** — version control and portfolio presentation.

## Skills Practiced in the First Lesson

CREATE DATABASE; USE; CREATE TABLE; VARCHAR, DECIMAL, TEXT; PRIMARY KEY; DESCRIBE; SELECT; COUNT; LOAD DATA LOCAL INFILE; basic SQL troubleshooting.

Reported by the author on October 31, 2026. For that first lesson, only the supplied successful statements were saved as new scripts; additional DESCRIBE or COUNT examples were not generated.

## Skills Practiced in the Second Lesson

On November 1, 2026, the author created the second MySQL table, identified a text-versus-integer identifier mismatch, learned ALTER TABLE, corrected the primary-key column to VARCHAR(20), removed an incorrectly imported record with DELETE, imported 10 gym locations, and verified the data using SELECT and COUNT. See the [lesson and troubleshooting history](docs/gym_locations_lesson.md). These are reported results, not a new execution by Codex.

## Continuing SQL Skills

- SELECT, WHERE, ORDER BY
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- Aggregate functions
- CASE expressions
- Subqueries
- Common Table Expressions (CTEs)
- Window functions
- Date and time calculations

## Planned Business Questions

1. Which subscription plans have the most members?
2. What is the estimated monthly subscription revenue?
3. Which gym locations have the most check-ins?
4. How does attendance differ across subscription plans?
5. Which members have become inactive?
6. How does gym utilization vary over time?
7. Which member segments show lower engagement?

No analytical findings are available yet. Monthly plan prices and member counts may support a scenario estimate, not verified billed or collected revenue. Inactivity needs an explicit threshold and observation date; it does not by itself establish churn. Utilization comparisons must account for the observation window and any missing attendance data.

## Project Status

**Working On It — Second SQL Learning Milestone**

Completed in the first hands-on lesson, as reported by the author on October 31, 2026:

- MySQL database `membership_analytics` created.
- First table `subscription_plans` created with a primary key on `subscription_plan`.
- `data/subscription_plans.csv` imported successfully.
- Three subscription records verified and the first SELECT query executed.

Completed in the second hands-on lesson, as reported by the author on November 1, 2026:

- Created `gym_locations`, then corrected `gym_id` from INT to VARCHAR(20) after encountering identifiers such as `gym_1`.
- Used ALTER TABLE and removed the one incorrect `gym_id = '0'` record.
- Successfully imported `data/gym_locations_data.csv` and verified the final **10 gym locations** with SELECT and COUNT.

Remaining work: create the users table and import 5,000 users; create the check-ins table and import 300,000 check-ins; establish and validate relationships; then begin membership engagement analysis. The counts are planned targets, not completed imports. Business analysis and advanced SQL remain unfinished. See the [project plan](docs/project_plan.md), [first query result](results/README.md), and [second lesson](docs/gym_locations_lesson.md).

## Repository Structure

```text
membership-engagement-sql-analysis/
├── data/
│   └── README.md
├── schema/
│   ├── README.md
│   ├── 01_create_database.sql
│   ├── 02_create_subscription_plans.sql
│   ├── 03_import_subscription_plans.sql
│   ├── 04_create_gym_locations.sql
│   ├── 05_import_gym_locations.sql
│   └── 06_verify_gym_locations.sql
├── sql/
│   ├── 01_fundamentals/
│   │   ├── .gitkeep
│   │   └── 01_select_subscription_plans.sql
│   ├── 02_joins/
│   │   └── .gitkeep
│   ├── 03_business_analysis/
│   │   └── .gitkeep
│   └── 04_advanced_sql/
│       └── .gitkeep
├── results/
│   └── README.md
├── docs/
│   ├── project_plan.md
│   └── gym_locations_lesson.md
├── README.md
├── .gitignore
└── AGENTS.md
```

This tree shows the documented repository structure, including the second-milestone files prepared for review. Local CSVs and the author's untracked `schema/database_setup.sql` are excluded from the proposed milestone changes. The empty `.gitkeep` files preserve folder scaffolding; they contain no queries.

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/pablocamarillo/membership-engagement-sql-analysis.git
   cd membership-engagement-sql-analysis
   ```

2. Use an existing MySQL 8.4+ installation and MySQL Workbench. On the author's computer, `Local MySQL Development` connects to `127.0.0.1:3306`. Enter credentials only in the local client; never put them in repository files.
3. Read [data/README.md](data/README.md), download the four CSVs separately from Kaggle, and keep them local under `data/`. Raw datasets are excluded from Git by default.
4. Review [schema/README.md](schema/README.md) and [Phase 1](docs/project_plan.md#phase-1-database-setup). The saved creation/import scripts document work already completed on the author's computer; do not rerun them against that database. Select `membership_analytics` as the active Workbench schema to review the saved SELECT. Use project-scoped access for future analysis where practical.
5. Write your own SQL in the relevant `sql/` folder and save only verified, reviewable findings in `results/`.

The import scripts retain the successful absolute Windows paths and require the local CSV plus client/server support for LOCAL. No automatic setup or import runner is provided. MySQL's internal data directory is separate from this repository and must never be copied into Git.

## Author

**Pablo Camarillo**

Data Analytics & Applied AI Student

[GitHub](https://github.com/pablocamarillo)
