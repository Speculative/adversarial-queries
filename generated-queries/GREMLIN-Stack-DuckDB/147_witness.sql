SET disabled_optimizers = 'join_order,build_side_probe_side';
SELECT count(*)
FROM ((comment CROSS JOIN (so_user CROSS JOIN site)) CROSS JOIN question) CROSS JOIN tag_question
WHERE comment.score != 1394
  AND comment.date < TIMESTAMP '2008-08-01T14:58:15.430'
  AND so_user.last_access_date > TIMESTAMP '2018-03-14T10:18:46.690'
  AND comment.site_id = site.site_id
  AND question.last_editor_id = so_user.id
  AND so_user.site_id = site.site_id
  AND tag_question.question_id = question.id;
