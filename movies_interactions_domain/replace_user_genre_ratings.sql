WITH
  genres_ratings AS (
  SELECT
    *
  FROM
    `funda-assessment.movies_viewer.ratings` AS ratings
  JOIN
    `funda-assessment.movies_viewer.movies` AS movies
  USING
    (movieId) )
SELECT
  DISTINCT userId,
  genre,
  DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH) AS reporting_month,
  PERCENTILE_CONT(rating, 0.5) OVER (PARTITION BY userId, genre, DATE_TRUNC(TIMESTAMP_SECONDS(timestamp), MONTH)) AS rating_monthly_median,
  PERCENTILE_CONT(rating, 0.5) OVER (PARTITION BY userId, genre) AS rating_median
FROM
  genres_ratings,
  UNNEST(SPLIT(genres, '|')) genre
