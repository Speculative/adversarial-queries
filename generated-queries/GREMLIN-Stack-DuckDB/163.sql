SELECT count(*)
FROM tag, site, so_user, tag_question
WHERE site.site_name = 'graphicdesign'
  AND so_user.upvotes < 0
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
