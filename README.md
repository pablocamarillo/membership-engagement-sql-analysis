# Membership Engagement & Revenue Analytics

A MySQL learning and portfolio project exploring synthetic gym membership activity.

**In Progress — First SQL Learning Milestone**

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

The `subscription_plans` table is implemented with a primary key. The other three tables and foreign-key relationships remain pending; their fields, types, counts, and relationships require validation. See [dataset documentation](data/README.md).

## Technologies

- **MySQL 8.4+** — relational storage and query execution; local server detected: 26.10.0.
- **MySQL Workbench** — SQL editor and local connection management; installed version: 26.10.0.
- **SQL** — the primary analysis language; queries are written by the project author.
- **Git and GitHub** — version control and portfolio presentation.

## Skills Practiced in the First Lesson

CREATE DATABASE; USE; CREATE TABLE; VARCHAR, DECIMAL, TEXT; PRIMARY KEY; DESCRIBE; SELECT; COUNT; LOAD DATA LOCAL INFILE; basic SQL troubleshooting.

Reported by the author on October 31, 2026. Only the supplied successful statements are saved as new scripts; additional DESCRIBE or COUNT examples have not been generated.

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

**In Progress — First SQL Learning Milestone**

Completed in the first hands-on lesson, as reported by the author on October 31, 2026:

- MySQL database `membership_analytics` created.
- First table `subscription_plans` created with a primary key on `subscription_plan`.
- `data/subscription_plans.csv` imported successfully.
- Three subscription records verified and the first SELECT query executed.

The remaining three tables, imports, foreign keys, business analysis, and advanced SQL are still in progress or pending. The overall project is not complete. See the [project plan](docs/project_plan.md) and [reported query result](results/README.md).

## Repository Structure

```text
membership-engagement-sql-analysis/
├── data/
│   └── README.md
├── schema/
│   ├── README.md
│   ├── 01_create_database.sql
│   ├── 02_create_subscription_plans.sql
│   └── 03_import_subscription_plans.sql
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
│   └── project_plan.md
├── README.md
├── .gitignore
└── AGENTS.md
```

This tree shows version-controlled files. Local CSVs and the author's untracked `schema/database_setup.sql` are not part of this milestone commit. The empty `.gitkeep` files preserve folder scaffolding; they contain no queries.

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

The import script retains the successful absolute Windows path and requires the local CSV plus client/server support for LOCAL. No automatic setup or import runner is provided. MySQL's internal data directory is separate from this repository and must never be copied into Git.

## Author

**Pablo Camarillo**

Data Analytics & Applied AI Student

[GitHub](https://github.com/pablocamarillo)
