-- 처음으로 시작하는 좌표들
SELECT *
  FROM 파이프만들기 a
 WHERE NOT EXISTS (SELECT 1
                     FROM 파이프만들기
                    WHERE e_x = a.s_x
                      AND e_y = a.s_y
                      AND e_z = a.s_z
                   )
;

-- 결과
SELECT CONNECT_BY_ROOT(id) gr_id
     , LEVEL seq
     , SUBSTR(SYS_CONNECT_BY_PATH(id, '-'), 2) path
  FROM 파이프만들기 a
 START WITH NOT EXISTS (SELECT 1
                          FROM 파이프만들기
                         WHERE e_x = a.s_x
                           AND e_y = a.s_y
                           AND e_z = a.s_z
                        )
 CONNECT BY PRIOR e_x = s_x
        AND PRIOR e_y = s_y
        AND PRIOR e_z = s_z
 ORDER SIBLINGS BY id
;
