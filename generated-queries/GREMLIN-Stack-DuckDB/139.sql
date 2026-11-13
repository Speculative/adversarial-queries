SELECT count(*)
FROM so_user, question, badge
WHERE question.favorite_count != 1
  AND so_user.reputation = 1
  AND badge.user_id = so_user.id
  AND question.last_editor_id = so_user.id;
