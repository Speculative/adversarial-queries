SELECT count(*)
FROM site, question, post_link, so_user, comment
WHERE comment.score < -6
  AND comment.date > TIMESTAMP '2008-08-01T14:58:15.430'
  AND so_user.upvotes = 0
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
