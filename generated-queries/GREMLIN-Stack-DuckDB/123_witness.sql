SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((answer CROSS JOIN (post_link CROSS JOIN question)) CROSS JOIN so_user) CROSS JOIN badge
WHERE post_link.link_type != 1
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND badge.user_id = so_user.id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id;
