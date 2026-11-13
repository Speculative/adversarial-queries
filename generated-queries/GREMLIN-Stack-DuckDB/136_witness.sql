SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((((comment CROSS JOIN site) CROSS JOIN so_user) CROSS JOIN badge) CROSS JOIN question) CROSS JOIN post_link
WHERE comment.score < -6
  AND comment.date != TIMESTAMP '2008-12-04T12:10:15.880'
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
