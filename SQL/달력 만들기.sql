--�޷� �����  http://www.gurubee.net/lecture/2911

SELECT TO_DATE('201503', 'yyyymm') dt
          FROM dual
          ;

-- �ش� ����
SELECT 
dt + LEVEL - 1 dt,
dt,
LEVEL,
TO_CHAR(LAST_DAY(dt), 'dd')
  FROM (SELECT TO_DATE('201503', 'yyyymm') dt
          FROM dual)
 CONNECT BY LEVEL < = TO_CHAR(LAST_DAY(dt), 'dd')
;

-- ����
WITH t AS
(
SELECT dt + LEVEL - 1 dt
  FROM (SELECT TO_DATE('201503', 'yyyymm') dt
          FROM dual)
 CONNECT BY LEVEL < = TO_CHAR(LAST_DAY(dt), 'dd')
)
SELECT ��, ��, ȭ, ��, ��, ��, ��
  FROM (SELECT TO_CHAR(dt, 'dd') d
             , TO_CHAR(dt, 'd' ) w
             , TRUNC(dt, 'd') ww
          FROM t
        )
 PIVOT (MIN(d) FOR w IN
 (1 ��, 2 ��, 3 ȭ, 4 ��, 5 ��, 6 ��, 7 ��))
 ORDER BY ww
;