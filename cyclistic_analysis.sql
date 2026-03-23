-- =========================
-- 1. Combine Data
-- =========================

CREATE TABLE cyclistic_2025 AS
SELECT * FROM jan_2025
UNION ALL
SELECT * FROM feb_2025
UNION ALL
SELECT * FROM mar_2025
UNION ALL
SELECT * FROM apr_2025
UNION ALL
SELECT * FROM may_2025
UNION ALL
SELECT * FROM june_2025
UNION ALL
SELECT * FROM july_2025
UNION ALL
SELECT * FROM aug_2025
UNION ALL
SELECT * FROM sep_2025
UNION ALL
SELECT * FROM oct_2025
UNION ALL
SELECT * FROM nov_2025
UNION ALL
SELECT * FROM dec_2025
UNION ALL
;

-- =========================
-- 2. Add Calculated Column
-- =========================

ALTER TABLE cyclistic_2025
ADD COLUMN ride_length_min NUMERIC;

UPDATE cyclistic_2025
SET ride_length_min =
EXTRACT(EPOCH FROM (ended_at::timestamp - started_at::timestamp)) / 60.0
WHERE started_at LIKE '____-__-__%'
  AND ended_at LIKE '____-__-__%';

-- =========================
-- 3. Remove Bad Data
-- =========================

DELETE FROM cyclistic_2025
WHERE ride_length_min <= 0;

-- =========================
-- 4. Rider Summary
-- =========================

SELECT
    member_casual,
    COUNT(*) AS total_rides,
    AVG(ride_length_min) AS avg_ride_length
FROM cyclistic_2025
GROUP BY member_casual;

-- =========================
-- 5. Day of Week Analysis
-- =========================

SELECT
    day_of_week,
    member_casual,
    COUNT(*) AS total_rides,
    AVG(ride_length_min) AS avg_ride_length
FROM cyclistic_2025
GROUP BY day_of_week, member_casual;
