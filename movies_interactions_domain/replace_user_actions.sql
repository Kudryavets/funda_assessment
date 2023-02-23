WITH
  user_rate_action AS (
  SELECT
    DISTINCT userId,
    DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH) AS reporting_month,
    "rate" AS action_type,
    COUNT(userId) OVER (PARTITION BY userId, DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH)) AS action_monthly_count,
    COUNT(userId) OVER (PARTITION BY userId) AS action_count
  FROM
    `funda-assessment.movies_viewer.ratings` ),
  user_tag_action AS (
  SELECT
    DISTINCT userId,
    DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH) AS reporting_month,
    "tag" AS action_type,
    COUNT(userId) OVER (PARTITION BY userId, DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH)) AS action_monthly_count,
    COUNT(userId) OVER (PARTITION BY userId) AS action_count
  FROM
    `funda-assessment.movies_viewer.tags` )
SELECT
  *
FROM
  user_rate_action
UNION ALL
SELECT
  *
FROM
  user_tag_action