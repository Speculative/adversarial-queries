SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM (so_user CROSS JOIN account) CROSS JOIN (post_link CROSS JOIN question)
WHERE post_link.link_type != 3
  AND post_link.post_id_from = question.id
  AND question.last_editor_id = so_user.id
  AND so_user.account_id = account.id;
