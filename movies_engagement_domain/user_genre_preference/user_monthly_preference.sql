CASE
  WHEN rating_monthly_median > 4 THEN 'likes'
  WHEN rating_monthly_median < 3 THEN 'dislikes'
  ELSE 'indifferent'
END