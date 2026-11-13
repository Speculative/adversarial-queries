SELECT count(*)
FROM badge, site, comment, tag_question, answer, tag, so_user
WHERE answer.creation_date > TIMESTAMP '2019-09-01T05:13:10.400'
  AND site.site_name = 'italian'
  AND answer.last_editor_id = so_user.id
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
