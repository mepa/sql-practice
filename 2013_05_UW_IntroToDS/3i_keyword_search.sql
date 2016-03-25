CREATE VIEW frequency_q AS
SELECT * FROM frequency
UNION
SELECT 'q' as docid, 'washington' as term, 1 as count
UNION
SELECT 'q' as docid, 'taxes' as term, 1 as count
UNION
SELECT 'q' as docid, 'treasury' as term, 1 as count;

SELECT * FROM (
  SELECT z.docid, sum(z.product) AS similarity FROM (
    SELECT x.docid, x.count*y.count AS product
    FROM frequency_q x, frequency_q y
    WHERE x.docid < y.docid AND x.term = y.term AND y.docid = "q"
  ) z
  GROUP BY z.docid
) a
ORDER BY a.similarity;

