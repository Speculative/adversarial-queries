SELECT count(*)
FROM so_user, tag, badge, site
WHERE site.site_name = 'gis'
  AND badge.user_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
