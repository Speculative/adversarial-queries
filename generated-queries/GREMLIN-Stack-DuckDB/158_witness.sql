SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (so_user CROSS JOIN (post_link CROSS JOIN question)) CROSS JOIN tag_question
WHERE so_user.upvotes > 0
  AND so_user.last_access_date != TIMESTAMP '2019-07-24T17:47:57.890'
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND tag_question.question_id = question.id;
