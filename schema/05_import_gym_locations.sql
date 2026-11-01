-- Author's successful import, recorded 2026-11-01: 10 gym locations.
-- Historical lesson record: do not rerun against the existing populated table.
-- Active schema: membership_analytics; gym_id must already be VARCHAR(20).
-- A separate fresh setup needs the local CSV and an adapted client-side path.
-- LOCAL requires client/server support; this script changes neither setting.
LOAD DATA LOCAL INFILE 'D:/Projects/membership-engagement-sql-analysis/data/gym_locations_data.csv'
INTO TABLE gym_locations
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(gym_id, location, gym_type, facilities);
