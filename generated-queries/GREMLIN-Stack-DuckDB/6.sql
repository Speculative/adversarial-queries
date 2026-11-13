SELECT count(*)
FROM account, question, post_link, so_user
WHERE post_link.date != TIMESTAMP '2016-07-06T12:16:50.990'
  AND post_link.link_type = 1
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.account_id = account.id;
