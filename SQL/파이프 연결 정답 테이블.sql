-- ó������ �����ϴ� ��ǥ��
SELECT *
  FROM ����������� a
 WHERE NOT EXISTS (SELECT 1
                     FROM �����������
                    WHERE e_x = a.s_x
                      AND e_y = a.s_y
                      AND e_z = a.s_z
                   )
;

-- ���
SELECT CONNECT_BY_ROOT(id) gr_id
     , LEVEL seq
     , SUBSTR(SYS_CONNECT_BY_PATH(id, '-'), 2) path
  FROM ����������� a
 START WITH NOT EXISTS (SELECT 1
                          FROM �����������
                         WHERE e_x = a.s_x
                           AND e_y = a.s_y
                           AND e_z = a.s_z
                        )
 CONNECT BY PRIOR e_x = s_x
        AND PRIOR e_y = s_y
        AND PRIOR e_z = s_z
 ORDER SIBLINGS BY id
;
