SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (answer CROSS JOIN (post_link CROSS JOIN question)) CROSS JOIN tag_question
WHERE post_link.date != TIMESTAMP '2018-02-25T06:21:59.583'
  AND answer.question_id = question.id
  AND post_link.post_id_from = question.id
  AND tag_question.question_id = question.id;
