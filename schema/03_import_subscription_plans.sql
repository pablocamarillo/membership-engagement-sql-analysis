-- Author's successful import, recorded 2026-10-31. Do not rerun the import.
-- Active schema: membership_analytics.
-- This absolute client-side path is the author's Windows/Quantum location.
-- A future separate environment must use its own local CSV path.
-- LOCAL requires support in both client and server; no settings are changed here.
LOAD DATA LOCAL INFILE 'D:/Projects/membership-engagement-sql-analysis/data/subscription_plans.csv'
INTO TABLE subscription_plans
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(subscription_plan, price_per_month, features);
