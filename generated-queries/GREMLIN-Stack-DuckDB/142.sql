SELECT count(*)
FROM site, tag, tag_question, so_user, comment
WHERE comment.date < TIMESTAMP '2008-08-01T14:58:15.430'
  AND site.site_name = 'cooking'
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
