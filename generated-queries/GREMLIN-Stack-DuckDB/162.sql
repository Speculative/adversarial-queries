SELECT count(*)
FROM tag, site, so_user, tag_question
WHERE site.site_name = 'french'
  AND so_user.creation_date < TIMESTAMP '2008-07-31T00:00:00.000'
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
