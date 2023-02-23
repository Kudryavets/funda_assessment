WITH
  monthly_movie_ratings AS (
  SELECT
    DISTINCT movieId,
    DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH) AS reporting_month,
    PERCENTILE_CONT(rating, 0.5) OVER (PARTITION BY movieId, DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH)) AS rating_median
  FROM
    `funda-assessment.movies_viewer.ratings` ),
  monthly_movie_views AS (
  SELECT
    movieId,
    COUNT(movieId) AS rating_count,
    DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH) AS reporting_month,
  FROM
    `funda-assessment.movies_viewer.ratings`
  GROUP BY
    movieId,
    DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH) ),
  movie_tags AS (
  SELECT
    movieId,
    STRING_AGG(DISTINCT tag, '|') AS tags
  FROM
    `funda-assessment.movies_viewer.tags`
  GROUP BY
    movieId ),
  movies AS (
  SELECT
    * REPLACE( REGEXP_REPLACE(title, r' \(\d{4}\)', '') AS title ),
    CAST(SUBSTR(REGEXP_EXTRACT(title, r'\(\d{4}\)'), 2, 4) AS INT64) AS release_year
  FROM
    `funda-assessment.movies_viewer.movies` )
SELECT
  *
FROM
  monthly_movie_ratings
JOIN
  movie_tags
USING
  (movieId)
JOIN
  movies
USING
  (movieId)
JOIN
  monthly_movie_views
USING
  (movieId,
    reporting_month)
