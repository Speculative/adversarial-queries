SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM tag CROSS JOIN (((post_link CROSS JOIN question) CROSS JOIN so_user) CROSS JOIN site)
WHERE question.score = 0
  AND question.favorite_count != 1
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
