-- Corrected final definition from the author's second lesson, 2026-11-01.
-- For a separate fresh setup only; this table already exists locally.
-- Select membership_analytics as the active Workbench schema first.
-- CSV gym IDs are text such as gym_1, not integers.
CREATE TABLE gym_locations (
    gym_id VARCHAR(20) PRIMARY KEY,
    location VARCHAR(50),
    gym_type VARCHAR(50),
    facilities TEXT
);
