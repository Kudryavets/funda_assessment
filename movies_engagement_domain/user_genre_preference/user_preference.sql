CASE
  WHEN rating_median > 4 THEN 'likes'
  WHEN rating_median < 3 THEN 'dislikes'
  ELSE 'indifferent'
END