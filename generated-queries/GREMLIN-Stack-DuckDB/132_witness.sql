SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((answer CROSS JOIN so_user) CROSS JOIN site) CROSS JOIN tag
WHERE site.site_name = 'crypto'
  AND answer.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
