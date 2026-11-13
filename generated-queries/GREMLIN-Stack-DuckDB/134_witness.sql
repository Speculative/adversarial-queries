SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((comment CROSS JOIN site) CROSS JOIN (question CROSS JOIN so_user)) CROSS JOIN badge
WHERE comment.date != TIMESTAMP '2015-08-26T21:39:54.898'
  AND question.last_edit_date < TIMESTAMP '2019-09-01T05:23:41.743'
  AND question.last_activity_date < TIMESTAMP '2008-08-31T19:49:13.810'
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
