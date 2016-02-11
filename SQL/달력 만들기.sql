--달력 만들기  http://www.gurubee.net/lecture/2911

SELECT TO_DATE('201503', 'yyyymm') dt
          FROM dual
          ;

-- 해당 연월
SELECT 
dt + LEVEL - 1 dt,
dt,
LEVEL,
TO_CHAR(LAST_DAY(dt), 'dd')
  FROM (SELECT TO_DATE('201503', 'yyyymm') dt
          FROM dual)
 CONNECT BY LEVEL < = TO_CHAR(LAST_DAY(dt), 'dd')
;

-- 정답
WITH t AS
(
SELECT dt + LEVEL - 1 dt
  FROM (SELECT TO_DATE('201503', 'yyyymm') dt
          FROM dual)
 CONNECT BY LEVEL < = TO_CHAR(LAST_DAY(dt), 'dd')
)
SELECT 일, 월, 화, 수, 목, 금, 토
  FROM (SELECT TO_CHAR(dt, 'dd') d
             , TO_CHAR(dt, 'd' ) w
             , TRUNC(dt, 'd') ww
          FROM t
        )
 PIVOT (MIN(d) FOR w IN
 (1 일, 2 월, 3 화, 4 수, 5 목, 6 금, 7 토))
 ORDER BY ww
;