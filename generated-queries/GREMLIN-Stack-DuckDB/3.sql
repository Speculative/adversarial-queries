SELECT count(*)
FROM account, site, tag, tag_question, so_user, comment
WHERE comment.date > TIMESTAMP '2019-09-01T08:37:12.327'
  AND comment.site_id = site.site_id
  AND so_user.account_id = account.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
