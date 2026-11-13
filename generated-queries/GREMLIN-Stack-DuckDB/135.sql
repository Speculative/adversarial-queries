SELECT count(*)
FROM site, question, post_link, so_user, comment, badge
WHERE comment.date < TIMESTAMP '2008-08-01T14:58:15.430'
  AND post_link.date != TIMESTAMP '2011-11-07T10:46:37.897'
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
