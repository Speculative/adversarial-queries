SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((comment CROSS JOIN site) CROSS JOIN ((question CROSS JOIN answer) CROSS JOIN so_user)) CROSS JOIN badge
WHERE answer.score < 1
  AND comment.score < 0
  AND question.view_count < 44
  AND question.creation_date < TIMESTAMP '2019-09-01T05:20:26.127'
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
