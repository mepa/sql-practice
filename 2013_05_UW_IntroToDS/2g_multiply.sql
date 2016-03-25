SELECT a.row_num, b.col_num, SUM(a.value * b.value)
FROM A a, B b
WHERE a.col_num = b.row_num
GROUP BY a.row_num, b.col_num;