SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM badge CROSS JOIN ((answer CROSS JOIN (question CROSS JOIN post_link)) CROSS JOIN so_user)
WHERE question.favorite_count > 1
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND badge.user_id = so_user.id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id;
