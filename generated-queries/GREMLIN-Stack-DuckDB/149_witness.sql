SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((((tag CROSS JOIN site) CROSS JOIN comment) CROSS JOIN tag_question) CROSS JOIN question) CROSS JOIN post_link
WHERE comment.score = 1394
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND tag.site_id = site.site_id
  AND tag_question.question_id = question.id
  AND tag_question.tag_id = tag.id;
