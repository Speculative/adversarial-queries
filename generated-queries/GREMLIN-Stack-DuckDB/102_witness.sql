SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((((tag_question CROSS JOIN tag) CROSS JOIN (comment CROSS JOIN site)) CROSS JOIN so_user) CROSS JOIN answer) CROSS JOIN badge
WHERE answer.creation_date > TIMESTAMP '2019-09-01T05:13:10.400'
  AND comment.date != TIMESTAMP '2008-08-01T14:58:15.430'
  AND answer.last_editor_id = so_user.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
