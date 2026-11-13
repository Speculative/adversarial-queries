SELECT count(*)
FROM tag, post_link, answer, question, comment, tag_question, site, so_user
WHERE answer.creation_date < TIMESTAMP '2019-09-01T05:13:10.400'
  AND site.site_name = 'languagelearning'
  AND so_user.downvotes > 0
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.question_id = question.id
  AND tag_question.tag_id = tag.id;
