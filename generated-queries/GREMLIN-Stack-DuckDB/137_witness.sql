SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (((tag_question CROSS JOIN tag) CROSS JOIN (comment CROSS JOIN site)) CROSS JOIN so_user) CROSS JOIN badge
WHERE comment.score < 0
  AND site.site_name = 'chemistry'
  AND badge.user_id = so_user.id
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
