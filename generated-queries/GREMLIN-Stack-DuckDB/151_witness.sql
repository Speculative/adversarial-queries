SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (tag_question CROSS JOIN (tag CROSS JOIN site)) CROSS JOIN comment
WHERE site.site_name = 'quantumcomputing'
  AND comment.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
