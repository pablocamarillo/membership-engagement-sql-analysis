-- Select membership_analytics as the active Workbench schema first.
-- Queries successfully executed by the author, recorded 2026-11-01.
-- Reported final COUNT(*): 10. This documentation update did not rerun SQL.
SELECT gym_id, location, gym_type
FROM gym_locations;

SELECT COUNT(*)
FROM gym_locations;
