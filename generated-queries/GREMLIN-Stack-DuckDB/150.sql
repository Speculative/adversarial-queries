SELECT count(*)
FROM comment, site, question, so_user
WHERE comment.score > 1394
  AND comment.date > TIMESTAMP '2008-08-01T14:58:15.430'
  AND question.view_count != 8083391
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
