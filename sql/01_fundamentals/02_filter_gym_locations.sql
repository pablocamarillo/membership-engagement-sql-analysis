-- Active schema: membership_analytics. Select it in Workbench first.
-- Records the Budget filtering exercise the author reported completing.
-- SELECT chooses the columns to display.
-- FROM names the table to read.
-- WHERE keeps only rows that match the condition.
SELECT gym_id, location, gym_type
FROM gym_locations
WHERE gym_type = 'Budget';
