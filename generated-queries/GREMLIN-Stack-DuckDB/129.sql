SELECT count(*)
FROM answer, so_user, comment, site
WHERE site.site_name = 'italian'
  AND answer.last_editor_id = so_user.id
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id;
