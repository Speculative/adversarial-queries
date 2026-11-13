SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((so_user CROSS JOIN (post_link CROSS JOIN question)) CROSS JOIN tag_question) CROSS JOIN site
WHERE so_user.upvotes != 0
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag_question.question_id = question.id;
