SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((badge CROSS JOIN so_user) CROSS JOIN site) CROSS JOIN tag
WHERE site.site_name = 'gis'
  AND badge.user_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
