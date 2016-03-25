SELECT count(*) FROM (
  SELECT DISTINCT x.docid
  FROM frequency x
  WHERE x.term="legal" OR x.term="law"
) y;
