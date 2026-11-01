# Membership Engagement & Revenue Analytics

A MySQL learning and portfolio project exploring synthetic gym membership activity.

**In Progress — Environment and Repository Setup**

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

These are proposed relationships, not validated keys or an implemented schema. Actual filenames, columns, types, row counts, uniqueness, and relationships must be inspected first. See [dataset documentation](data/README.md).

## Technologies

- **MySQL 8.4+** — planned relational storage and query execution; local server detected: 26.10.0.
- **MySQL Workbench** — SQL editor and local connection management; installed version: 26.10.0.
- **SQL** — the primary analysis language; queries will be written by the project author.
- **Git and GitHub** — version control and portfolio presentation.

## Planned SQL Skills

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

**In Progress — Environment and Repository Setup**

The local environment and repository foundation are prepared. CSV inspection, schema design, database creation, imports, and SQL analysis have not started. All five learning milestones remain open in the [project plan](docs/project_plan.md).

## Repository Structure

```text
membership-engagement-sql-analysis/
├── data/
│   └── README.md
├── schema/
│   └── README.md
├── sql/
│   ├── 01_fundamentals/
│   │   └── .gitkeep
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

The empty `.gitkeep` files preserve planned SQL folders in Git; they contain no queries.

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/pablocamarillo/membership-engagement-sql-analysis.git
   cd membership-engagement-sql-analysis
   ```

2. Use an existing MySQL 8.4+ installation and MySQL Workbench. On the author's computer, `Local MySQL Development` connects to `127.0.0.1:3306`. Enter credentials only in the local client; never put them in repository files.
3. Read [data/README.md](data/README.md), download the four CSVs separately from Kaggle, and keep them local under `data/`. Raw datasets are excluded from Git by default.
4. Inspect the files and follow [Phase 1](docs/project_plan.md#phase-1-database-setup). Agree on validated keys and types before creating the project database or importing data. Use a project-scoped account for future analysis where practical.
5. Write your own SQL in the relevant `sql/` folder and save only verified, reviewable findings in `results/`.

There is no database setup script yet. MySQL's internal data directory is separate from this repository and must never be copied into Git.

## Author

**Pablo Camarillo**

Data Analytics & Applied AI Student

[GitHub](https://github.com/pablocamarillo)
