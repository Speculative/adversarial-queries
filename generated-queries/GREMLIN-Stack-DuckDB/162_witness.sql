SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM tag_question CROSS JOIN (so_user CROSS JOIN (tag CROSS JOIN site))
WHERE site.site_name = 'french'
  AND so_user.creation_date < TIMESTAMP '2008-07-31T00:00:00.000'
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
