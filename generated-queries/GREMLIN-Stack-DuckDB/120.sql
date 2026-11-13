SELECT count(*)
FROM tag, site, so_user, answer
WHERE answer.last_edit_date != TIMESTAMP '2019-09-01T05:18:29.373'
  AND site.site_name = 'ethereum'
  AND answer.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
