SELECT count(*)
FROM post_link, so_user, question
WHERE so_user.reputation = 1
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id;
