SELECT count(*)
FROM post_link, so_user, question, tag_question
WHERE so_user.upvotes > 0
  AND so_user.last_access_date != TIMESTAMP '2019-07-24T17:47:57.890'
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND tag_question.question_id = question.id;
