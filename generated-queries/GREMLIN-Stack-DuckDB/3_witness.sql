SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((comment CROSS JOIN ((so_user CROSS JOIN account) CROSS JOIN site)) CROSS JOIN tag) CROSS JOIN tag_question
WHERE comment.date > TIMESTAMP '2019-09-01T08:37:12.327'
  AND comment.site_id = site.site_id
  AND so_user.account_id = account.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
