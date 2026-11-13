SELECT count(*)
FROM comment, site, tag_question, tag
WHERE site.site_name = 'quantumcomputing'
  AND comment.site_id = site.site_id
  AND tag.site_id = site.site_id
  AND tag_question.tag_id = tag.id;
