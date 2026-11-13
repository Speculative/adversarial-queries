SELECT count(*)
FROM account, site, tag, tag_question, so_user
WHERE site.site_name = 'stackapps'
  AND so_user.account_id = account.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
