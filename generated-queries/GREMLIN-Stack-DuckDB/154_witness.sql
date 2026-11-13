SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM tag_question CROSS JOIN (post_link CROSS JOIN (question CROSS JOIN so_user))
WHERE so_user.creation_date > TIMESTAMP '2019-09-01T05:18:12.113'
  AND so_user.downvotes != 0
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND tag_question.question_id = question.id;
