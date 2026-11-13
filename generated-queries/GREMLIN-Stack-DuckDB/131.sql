SELECT count(*)
FROM question, post_link, answer, tag_question
WHERE post_link.date < TIMESTAMP '2016-07-06T12:16:50.990'
  AND post_link.link_type = 1
  AND answer.question_id = question.id
  AND post_link.post_id_from = question.id
  AND tag_question.question_id = question.id;
