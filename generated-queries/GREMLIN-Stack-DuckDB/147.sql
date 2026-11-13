SELECT count(*)
FROM site, tag_question, question, so_user, comment
WHERE comment.score != 1394
  AND comment.date < TIMESTAMP '2008-08-01T14:58:15.430'
  AND so_user.last_access_date > TIMESTAMP '2018-03-14T10:18:46.690'
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag_question.question_id = question.id;
