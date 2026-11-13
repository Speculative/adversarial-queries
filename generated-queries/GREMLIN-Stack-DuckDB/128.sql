SELECT count(*)
FROM site, answer, question, so_user, comment
WHERE question.view_count = 2
  AND so_user.downvotes > 1139933
  AND answer.last_editor_id = so_user.id
  AND answer.question_id = question.id
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id;
