--reuters.db: frequency(docid, term, count)
--term-document matrix:
--  each row is a document vector
--  matrix is sparse since some docs don't contain a given term
--(unnormalized) measure of similarity: 
--  S = D*D^T 
--  if two documents both contain a term, then the score goes up by the product of the two term frequencies (dot product of the two document vectors)

SELECT sum(x.count * y.count)
FROM frequency x, frequency y
WHERE x.docid < y.docid AND x.term = y.term AND x.docid = "10080_txt_crude" AND y.docid = "17035_txt_earn";

