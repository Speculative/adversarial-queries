SELECT count(*)
FROM comment, site, question, so_user
WHERE comment.date < TIMESTAMP '2008-08-01T14:58:15.430'
  AND question.favorite_count = 1
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
