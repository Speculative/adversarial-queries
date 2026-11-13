SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (((tag_question CROSS JOIN tag) CROSS JOIN site) CROSS JOIN so_user) CROSS JOIN account
WHERE site.site_name = 'stackapps'
  AND so_user.account_id = account.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
