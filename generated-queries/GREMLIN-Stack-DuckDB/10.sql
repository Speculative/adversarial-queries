SELECT count(*)
FROM account, site, tag, question, post_link, so_user
WHERE post_link.link_type != 1
  AND so_user.downvotes != 0
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.account_id = account.id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id;
