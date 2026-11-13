SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (so_user CROSS JOIN account) CROSS JOIN (post_link CROSS JOIN question)
WHERE post_link.date != TIMESTAMP '2014-05-13T10:42:59.770'
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.account_id = account.id;
