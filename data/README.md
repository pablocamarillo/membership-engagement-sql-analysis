# Dataset Source and Inspection Notes

## Source

- Dataset: **Gym Check-ins and User Metadata**
- Creator/publisher: **mexwell**
- Verified source: https://www.kaggle.com/datasets/mexwell/gym-check-ins-and-user-metadata
- Metadata verification: October 31, 2026, via [Kaggle's dataset metadata endpoint](https://www.kaggle.com/api/v1/datasets/view/mexwell/gym-check-ins-and-user-metadata).
- Reported license: **CC0: Public Domain** (`licenseName` in Kaggle metadata). Review the dataset page and any included notices when downloading; record any differences before redistribution.
- Synthetic gym data; no real Delta Defense or USCCA customer data.
- Local filenames are recorded below. Download date, dataset version, independently verified CSV row counts, and file checksums: **not yet recorded**.

Four CSV files are now present locally: `users_data.csv`, `gym_locations_data.csv`, `checkin_checkout_history_updated.csv`, and `subscription_plans.csv`. The author reported importing three subscription records and verifying plan names and prices on October 31, 2026. On November 1, 2026, the author also reported successfully importing 10 gym locations and verifying them with SELECT and COUNT. See the [saved setup/import scripts](../schema/README.md) and [gym locations lesson](../docs/gym_locations_lesson.md). These are author-reported database counts, not a fresh verification. Users and check-in history imports remain pending; their CSVs have not been claimed as inspected. This documentation update did not execute SQL or read or copy raw CSV contents. Raw data stays local and is excluded from Git. Do not force-add CSVs without reviewing the license and obtaining approval to publish the files.

## Expected Structure — Not Yet Verified Against CSVs

| Expected file/entity | Expected columns supplied in the project brief |
| --- | --- |
| Users | `user_id`, `first_name`, `last_name`, `age`, `gender`, `birthdate`, `sign_up_date`, `user_location`, `subscription_plan` |
| Gym Locations | `gym_id`, `location`, `gym_type`, `facilities` |
| Check-in/Checkout History | `user_id`, `gym_id`, `checkin_time`, `checkout_time`, `workout_type`, `calories_burned` |
| Subscription Plans | `subscription_plan`, `price_per_month`, `features` |

Potential relationships: Users to visits through `user_id`; Gym Locations to visits through `gym_id`; Subscription Plans to Users through `subscription_plan`. These relationships and cardinalities must be validated. The subscription table now uses `subscription_plan VARCHAR(50) PRIMARY KEY`, `price_per_month DECIMAL(10,2)`, and `features TEXT`, as reported by the author. The gym_locations table is also implemented with `gym_id VARCHAR(20) PRIMARY KEY`, `location VARCHAR(50)`, `gym_type VARCHAR(50)`, and `facilities TEXT`; see the [saved definition](../schema/04_create_gym_locations.sql). Users and check-ins table definitions and foreign keys remain pending.

## Before Schema Design

- Record filenames, source version, download date, encoding, delimiter, and row counts.
- Inspect actual column names, nulls, duplicates, identifier uniqueness, and unmatched references.
- Validate date formats, time zones, visit durations, and the available observation period.
- Confirm currency and the meaning of monthly plan price; look for billing, cancellation, and historical plan information before interpreting revenue or retention.
- Check whether age and birthdate agree for an explicit reference date.
- Treat identifiers and timestamps as evidence to inspect, not assumptions that every visit is unique.

Preserve original local CSVs unchanged. Document findings before creating any tables or imports.
