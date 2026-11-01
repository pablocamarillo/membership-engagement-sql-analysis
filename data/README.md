# Dataset Source and Inspection Notes

## Source

- Dataset: **Gym Check-ins and User Metadata**
- Creator/publisher: **mexwell**
- Verified source: https://www.kaggle.com/datasets/mexwell/gym-check-ins-and-user-metadata
- Metadata verification: October 31, 2026, via [Kaggle's dataset metadata endpoint](https://www.kaggle.com/api/v1/datasets/view/mexwell/gym-check-ins-and-user-metadata).
- Reported license: **CC0: Public Domain** (`licenseName` in Kaggle metadata). Review the dataset page and any included notices when downloading; record any differences before redistribution.
- Synthetic gym data; no real Delta Defense or USCCA customer data.
- Download date, dataset version, actual filenames, row counts, and file checksums: **not yet recorded**.

No dataset files have been downloaded or inspected for this project. Raw data stays local and is excluded from Git. Do not force-add CSVs without reviewing the license and obtaining approval to publish the files.

## Expected Structure — Not Yet Verified Against CSVs

| Expected file/entity | Expected columns supplied in the project brief |
| --- | --- |
| Users | `user_id`, `first_name`, `last_name`, `age`, `gender`, `birthdate`, `sign_up_date`, `user_location`, `subscription_plan` |
| Gym Locations | `gym_id`, `location`, `gym_type`, `facilities` |
| Check-in/Checkout History | `user_id`, `gym_id`, `checkin_time`, `checkout_time`, `workout_type`, `calories_burned` |
| Subscription Plans | `subscription_plan`, `price_per_month`, `features` |

Potential relationships: Users to visits through `user_id`; Gym Locations to visits through `gym_id`; Subscription Plans to Users through `subscription_plan`. These relationships and cardinalities must be validated. No primary keys, foreign keys, data types, or table definitions have been finalized.

## Before Schema Design

- Record filenames, source version, download date, encoding, delimiter, and row counts.
- Inspect actual column names, nulls, duplicates, identifier uniqueness, and unmatched references.
- Validate date formats, time zones, visit durations, and the available observation period.
- Confirm currency and the meaning of monthly plan price; look for billing, cancellation, and historical plan information before interpreting revenue or retention.
- Check whether age and birthdate agree for an explicit reference date.
- Treat identifiers and timestamps as evidence to inspect, not assumptions that every visit is unique.

Preserve original local CSVs unchanged. Document findings before creating any tables or imports.
