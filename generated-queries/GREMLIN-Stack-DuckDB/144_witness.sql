SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((comment CROSS JOIN (so_user CROSS JOIN site)) CROSS JOIN question) CROSS JOIN post_link
WHERE comment.date > TIMESTAMP '2019-09-01T08:37:12.327'
  AND so_user.reputation = 1
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
