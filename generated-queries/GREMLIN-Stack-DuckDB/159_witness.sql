SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM tag_question CROSS JOIN ((question CROSS JOIN so_user) CROSS JOIN site)
WHERE so_user.last_access_date > TIMESTAMP '2008-07-31T00:00:00.000'
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag_question.question_id = question.id;
