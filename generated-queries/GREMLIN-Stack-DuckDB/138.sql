SELECT count(*)
FROM site, tag, tag_question, question, so_user, badge
WHERE question.creation_date != TIMESTAMP '2008-07-31T21:42:52.667'
  AND question.last_edit_date > TIMESTAMP '2019-09-01T05:23:41.743'
  AND badge.user_id = so_user.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.question_id = question.id
  AND tag_question.tag_id = tag.id;
