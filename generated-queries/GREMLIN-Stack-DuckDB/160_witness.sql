SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((tag_question CROSS JOIN tag) CROSS JOIN site) CROSS JOIN so_user
WHERE site.site_name = 'academia'
  AND so_user.last_access_date != TIMESTAMP '2018-03-14T10:18:46.690'
  AND so_user.downvotes > 0
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
