SELECT count(*)
FROM site, tag, tag_question, question, post_link, comment
WHERE comment.score = 1394
  AND comment.site_id = site.site_id
  AND post_link.post_id_from = question.id
  AND tag.site_id = site.site_id
  AND tag_question.question_id = question.id
  AND tag_question.tag_id = tag.id;
