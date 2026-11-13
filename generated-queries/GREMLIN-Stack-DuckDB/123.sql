SELECT count(*)
FROM answer, question, post_link, so_user, badge
WHERE post_link.link_type != 1
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND badge.user_id = so_user.id
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id;
