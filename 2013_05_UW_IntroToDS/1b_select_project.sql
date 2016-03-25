SELECT count(*) FROM (
  SELECT x.term
  FROM frequency x
  WHERE x.docid="10398_txt_earn" AND x.count=1
) y;