SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((so_user CROSS JOIN account) CROSS JOIN site) CROSS JOIN comment
WHERE comment.score < 0
  AND comment.date != TIMESTAMP '2012-10-17T21:36:47.323'
  AND comment.site_id = site.site_id
  AND so_user.account_id = account.id
  AND so_user.site_id = site.site_id;
