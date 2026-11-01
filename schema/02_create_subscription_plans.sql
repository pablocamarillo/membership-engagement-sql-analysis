-- Select membership_analytics as the active schema in Workbench first.
-- Author's successful table definition; do not recreate the existing table.
CREATE TABLE subscription_plans (
    subscription_plan VARCHAR(50) PRIMARY KEY,
    price_per_month DECIMAL(10,2),
    features TEXT
);
