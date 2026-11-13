SELECT count(*)
FROM badge, site, comment, tag_question, answer, tag, question, so_user
WHERE answer.creation_date > TIMESTAMP '2008-07-31T22:17:57.883'
  AND comment.score = 1394
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.question_id = question.id
  AND tag_question.tag_id = tag.id;
