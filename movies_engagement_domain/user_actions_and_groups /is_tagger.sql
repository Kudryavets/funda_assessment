CASE
  WHEN action_count > 7 AND action_type = 'tag' THEN TRUE
  ELSE FALSE
END