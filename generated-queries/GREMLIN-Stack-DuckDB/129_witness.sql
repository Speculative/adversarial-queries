SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((comment CROSS JOIN site) CROSS JOIN so_user) CROSS JOIN answer
WHERE site.site_name = 'italian'
  AND answer.last_editor_id = so_user.id
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id;
