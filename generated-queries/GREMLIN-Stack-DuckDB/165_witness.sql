SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((tag_question CROSS JOIN tag) CROSS JOIN site) CROSS JOIN so_user
WHERE site.site_name = 'softwarerecs'
  AND so_user.last_access_date != TIMESTAMP '2019-09-01T05:19:08.063'
  AND so_user.downvotes < 0
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
