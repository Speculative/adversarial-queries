SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (((((comment CROSS JOIN site) CROSS JOIN tag) CROSS JOIN so_user) CROSS JOIN tag_question) CROSS JOIN badge) CROSS JOIN answer
WHERE answer.creation_date > TIMESTAMP '2019-09-01T05:13:10.400'
  AND comment.score != -6
  AND answer.last_editor_id = so_user.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
