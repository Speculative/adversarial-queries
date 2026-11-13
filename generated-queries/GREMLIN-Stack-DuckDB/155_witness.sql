SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (((post_link CROSS JOIN question) CROSS JOIN so_user) CROSS JOIN site) CROSS JOIN tag
WHERE site.site_name = 'philosophy'
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
