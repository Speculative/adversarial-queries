SELECT count(*)
FROM tag, site, so_user, tag_question
WHERE site.site_name = 'codegolf'
  AND so_user.downvotes > 0
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
