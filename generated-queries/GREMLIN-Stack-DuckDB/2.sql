SELECT count(*)
FROM answer, so_user, account, badge
WHERE so_user.creation_date > TIMESTAMP '2018-08-07T08:09:30.723'
  AND answer.last_editor_id = so_user.id
  AND badge.user_id = so_user.id
  AND so_user.account_id = account.id;
