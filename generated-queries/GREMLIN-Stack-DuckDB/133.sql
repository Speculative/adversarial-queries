SELECT count(*)
FROM tag, site, so_user, answer
WHERE site.site_name = 'stats'
  AND answer.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
