SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (so_user CROSS JOIN account) CROSS JOIN (post_link CROSS JOIN question)
WHERE post_link.date != TIMESTAMP '2016-07-06T12:16:50.990'
  AND post_link.link_type = 1
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.account_id = account.id;
