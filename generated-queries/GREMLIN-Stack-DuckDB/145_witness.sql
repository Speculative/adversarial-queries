SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (((comment CROSS JOIN site) CROSS JOIN so_user) CROSS JOIN question) CROSS JOIN post_link
WHERE comment.date > TIMESTAMP '2015-08-26T21:39:54.898'
  AND comment.score < 0
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
