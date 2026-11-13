SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((so_user CROSS JOIN (comment CROSS JOIN site)) CROSS JOIN tag) CROSS JOIN tag_question
WHERE comment.date < TIMESTAMP '2008-08-01T14:58:15.430'
  AND site.site_name = 'cooking'
  AND comment.site_id = site.site_id
  AND so_user.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
