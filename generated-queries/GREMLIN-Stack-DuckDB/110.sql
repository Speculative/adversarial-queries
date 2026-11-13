SELECT count(*)
FROM site, question, so_user, post_link, answer, comment, badge, tag_question, tag
WHERE answer.creation_date > TIMESTAMP '2019-09-01T05:13:10.400'
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.question_id = question.id
  AND tag_question.tag_id = tag.id;
