SELECT count(*)
FROM account, question, post_link, so_user
WHERE post_link.date > TIMESTAMP '2013-08-05T19:26:19.143'
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.account_id = account.id;
