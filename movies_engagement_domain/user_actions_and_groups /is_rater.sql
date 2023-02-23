CASE
  WHEN action_count > 100 AND action_type = 'rate' THEN TRUE
  ELSE FALSE
END