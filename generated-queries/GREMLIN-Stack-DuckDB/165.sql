SELECT count(*)
FROM tag, site, so_user, tag_question
WHERE site.site_name = 'softwarerecs'
  AND so_user.last_access_date != TIMESTAMP '2019-09-01T05:19:08.063'
  AND so_user.downvotes < 0
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
