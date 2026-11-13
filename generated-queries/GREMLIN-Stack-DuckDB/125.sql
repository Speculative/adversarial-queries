SELECT count(*)
FROM question, site, answer, so_user, comment, tag_question
WHERE comment.date > TIMESTAMP '2015-08-26T21:39:54.898'
  AND so_user.upvotes < 0
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag_question.question_id = question.id;
