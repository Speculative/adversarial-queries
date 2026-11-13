SELECT count(*)
FROM site, tag_question, question, post_link, so_user
WHERE so_user.upvotes != 0
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag_question.question_id = question.id;
