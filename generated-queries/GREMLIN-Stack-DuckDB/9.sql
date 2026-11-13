SELECT count(*)
FROM account, question, post_link, so_user
WHERE post_link.link_type != 3
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.account_id = account.id;
