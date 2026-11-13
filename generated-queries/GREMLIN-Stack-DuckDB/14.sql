SELECT count(*)
FROM post_link, badge, site, comment, tag_question, answer, question, so_user
WHERE answer.creation_date != TIMESTAMP '2019-09-01T05:13:10.400'
  AND post_link.date = TIMESTAMP '2010-04-26T02:59:48.600'
  AND site.site_name = 'law'
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag_question.question_id = question.id;
