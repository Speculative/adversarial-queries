SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (((badge CROSS JOIN (((comment CROSS JOIN site) CROSS JOIN so_user) CROSS JOIN answer)) CROSS JOIN tag) CROSS JOIN question) CROSS JOIN tag_question
WHERE answer.creation_date > TIMESTAMP '2019-09-01T05:13:10.400'
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.question_id = question.id
  AND tag_question.tag_id = tag.id;
