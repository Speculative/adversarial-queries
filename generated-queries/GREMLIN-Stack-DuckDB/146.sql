SELECT count(*)
FROM tag, question, site, post_link, so_user, comment
WHERE comment.score != -6
  AND comment.date = TIMESTAMP '2019-09-01T08:37:12.327'
  AND post_link.date > TIMESTAMP '2019-01-06T12:29:14.987'
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
