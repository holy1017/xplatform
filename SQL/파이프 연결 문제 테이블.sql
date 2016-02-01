--http://www.gurubee.net/lecture/2912

CREATE TABLE 파이프만들기
AS
SELECT '01' id, 1 s_x, 3 s_y, 4 s_z, 1 e_x, 2 e_y, 4 e_z FROM dual
UNION ALL SELECT '02', 2, 8, 7, 8, 8, 7 FROM dual
UNION ALL SELECT '03', 1, 4, 6, 1, 4, 5 FROM dual
UNION ALL SELECT '04', 1, 6, 7, 1, 5, 7 FROM dual
UNION ALL SELECT '05', 9, 1, 4, 3, 1, 4 FROM dual
UNION ALL SELECT '06', 6, 1, 1, 7, 1, 0 FROM dual
UNION ALL SELECT '07', 4, 1, 3, 5, 1, 2 FROM dual
UNION ALL SELECT '08', 2, 8, 7, 1, 6, 7 FROM dual
UNION ALL SELECT '09', 1, 5, 7, 1, 4, 6 FROM dual
UNION ALL SELECT '10', 8, 8, 7, 8, 7, 7 FROM dual
UNION ALL SELECT '11', 1, 2, 4, 2, 1, 4 FROM dual
UNION ALL SELECT '12', 3, 1, 4, 4, 1, 3 FROM dual
UNION ALL SELECT '13', 5, 1, 2, 6, 1, 1 FROM dual
UNION ALL SELECT '14', 1, 4, 5, 1, 3, 4 FROM dual;
 
SELECT * FROM 파이프만들기;