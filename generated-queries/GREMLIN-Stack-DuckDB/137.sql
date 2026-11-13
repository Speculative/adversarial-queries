SELECT count(*)
FROM site, tag, tag_question, so_user, comment, badge
WHERE comment.score < 0
  AND site.site_name = 'chemistry'
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
