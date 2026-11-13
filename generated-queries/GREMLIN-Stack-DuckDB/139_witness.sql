SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM badge CROSS JOIN (so_user CROSS JOIN question)
WHERE question.favorite_count != 1
  AND so_user.reputation = 1
  AND badge.user_id = so_user.id
  AND question.last_editor_id = so_user.id;
