SELECT count(*)
FROM site, tag, question, post_link, so_user
WHERE site.site_name = 'philosophy'
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
