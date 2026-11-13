SELECT count(*)
FROM account, site, answer, so_user, comment, badge
WHERE answer.last_activity_date < TIMESTAMP '2008-08-01T13:16:49.127'
  AND comment.date != TIMESTAMP '2019-09-01T08:37:12.327'
  AND answer.last_editor_id = so_user.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND so_user.account_id = account.id
  AND so_user.site_id = site.site_id;
