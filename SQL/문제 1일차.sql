--  1번 --
SELECT 
EMPNO
, ENAME
--, JOB
--, MGR
--, HIREDATE
, SAL
--, COMM
, DEPTNO 
FROM EMP 
where 
DEPTNO=10
;

--  2번  --
SELECT 
--EMPNO
 ENAME
--, JOB
--, MGR
, HIREDATE
--, SAL
--, COMM
, DEPTNO 
FROM EMP 
where 
--DEPTNO=10
EMPNO=7369
;

--  3번
select * from emp where ENAME='ALLEN';

--   4  --
SELECT 
--EMPNO
 ENAME
--, JOB
--, MGR
--, HIREDATE
, SAL
--, COMM
, DEPTNO 
FROM EMP 
where 
--DEPTNO=10
--EMPNO=7369
HIREDATE='83/01/12'
--HIREDATE='81/02/20'
;

--  5 --
SELECT 
*
FROM EMP 
where 
JOB !='MANAGER'
--DEPTNO=10
--EMPNO=7369
--HIREDATE='83/01/12'
--HIREDATE='81/02/20'
;

--  6 --
SELECT 
*
FROM EMP 
where 
--DEPTNO=10
--EMPNO=7369
HIREDATE>'81/04/02'
--HIREDATE='81/02/20'
;

--  7 --
SELECT 
ENAME, 
--JOB, MGR, HIREDATE, 
SAL, 
--COMM, 
DEPTNO 
FROM EMP 
where
sal>=800
;

--  8 --
SELECT 
*
FROM EMP 
where
--sal>=800
DEPTNO>=20
;

--  9 --
SELECT 
*
--substr(ENAME, 1, 1)
--, substr(ENAME, 1, 1)
FROM EMP 
where
--sal>=800
--DEPTNO>=20
--ENAME>'K'
SUBSTR(ENAME, 1, 1)>'K'
;

--  10  --
SELECT 
*
--substr(ENAME, 1, 1)
--, substr(ENAME, 1, 1)
FROM EMP 
where
--sal>=800
--DEPTNO>=20
--ENAME>'K'
--SUBSTR(ENAME, 1, 1)>'K'
HIREDATE<'81/12/09'
;

--  11  --
SELECT 
EMPNO
,ename
--substr(ENAME, 1, 1)
--, substr(ENAME, 1, 1)
FROM EMP 
where
--sal>=800
--DEPTNO>=20
--ENAME>'K'
--SUBSTR(ENAME, 1, 1)>'K'
EMPNO<=7698
;

--  12  --
SELECT 
ename
,SAL
,DEPTNO
--substr(ENAME, 1, 1)
--, substr(ENAME, 1, 1)
FROM EMP 
where
--sal>=800
--DEPTNO>=20
--ENAME>'K'
--SUBSTR(ENAME, 1, 1)>'K'
HIREDATE>'81/04/02'
AND HIREDATE<'82/12/09'
;

--  13  --
SELECT 
ename
,JOB
,SAL
FROM EMP 
where
SAL>1600
AND SAL<3000
;

--  14  --
SELECT 
*
FROM EMP 
where
EMPNO>7654
AND EMPNO<7782
;

--  15  -- 'B'< <'J' 인건지 'B'< <='J*' 인건지..
SELECT 
*
FROM EMP 

--EMPNO>7654
--AND EMPNO<7782
where ENAME BETWEEN 'B' AND 'J' 
;

--  16  --
SELECT 
--TO_CHAR(HIREDATE,'YY'),
*
FROM EMP 
where TO_CHAR(HIREDATE,'YY') !='81'
;

--  17  --
SELECT 
--TO_CHAR(HIREDATE,'YY'),
*
FROM EMP 
where 
--JOB='MANAGER'
--OR JOB='SALESMAN'
JOB IN('MANAGER','SALESMAN')
;

--  18  --
SELECT 
ENAME,EMPNO,DEPTNO
FROM EMP 
where 
DEPTNO NOT IN(20,30)
;

--  19  --
SELECT 
ENAME,HIREDATE,DEPTNO
FROM EMP 
where 
ENAME LIKE 'S%'
;

--  20  --
SELECT 
--TO_CHAR(HIREDATE,'YY'),
*
FROM EMP 
where TO_CHAR(HIREDATE,'YY') ='81'
;

--  21  --
SELECT 
*
FROM EMP 
where 
ENAME LIKE '%S%'
;

--  22  --
SELECT 
*
FROM EMP 
where 
ENAME LIKE 'S___T'
;

--  23  --
SELECT 
*
FROM EMP 
where 
ENAME LIKE '_A%'
;

--  24  --
SELECT 
*
FROM EMP 
where 
COMM IS NULL
;

--  25  --
SELECT 
*
FROM EMP 
where 
COMM IS NOT NULL
;

--  26  --
SELECT 
A.ENAME,B.DNAME,A.SAL
FROM EMP A,DEPT B
where 
b.deptno=b.deptno
AND A.DEPTNO=30
AND A.sal>=1500
;

--  27  --
SELECT 
EMPNO,ENAME,DEPTNO
FROM EMP 
where 
ENAME LIKE 'K%'
OR DEPTNO=30
;

--  28  --
SELECT 
*
FROM EMP 
where 
SAL>=1500
AND DEPTNO=30
AND JOB='MANAGER'
;

--  29  --
SELECT 
*
FROM EMP 
where 
DEPTNO=30
order by EMPNO
;

--  30  --
SELECT 
*
FROM EMP 
order by SAL DESC
;

--  31  --
SELECT 
*
FROM EMP 
order by DEPTNO,SAL  DESC
;

--  32  --
SELECT 
*
FROM EMP 
order by DEPTNO DESC,ENAME  ,SAL DESC
;
