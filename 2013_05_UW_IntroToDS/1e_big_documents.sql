SELECT count(y.count) FROM (
  SELECT *
  FROM frequency x
  GROUP BY x.term
  HAVING count(x.term)>300
) y;