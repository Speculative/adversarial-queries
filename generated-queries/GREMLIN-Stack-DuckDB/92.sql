SELECT count(*)
FROM so_user, tag, question, tag_question, answer, post_link, comment, badge, site
WHERE answer.creation_date > TIMESTAMP '2008-07-31T22:17:57.883'
  AND comment.score = 1394
  AND site.site_name = 'sports'
  AND so_user.last_access_date != TIMESTAMP '2019-09-01T05:19:08.063'
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
