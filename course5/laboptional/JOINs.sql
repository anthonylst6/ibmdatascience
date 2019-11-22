-- Query 1A
select E.F_NAME, E.L_NAME, JH.START_DATE
from EMPLOYEES E
	inner join JOB_HISTORY JH on E.EMP_ID = JH.EMPL_ID
where E.DEP_ID = 5;
		
-- Query 1B
select E.F_NAME, E.L_NAME, JH.START_DATE, J.JOB_TITLE
from EMPLOYEES E
	inner join JOB_HISTORY JH on E.EMP_ID = JH.EMPL_ID
	inner join JOBS J on E.JOB_ID = J.JOB_IDENT
where E.DEP_ID = 5;

-- Query 2A
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES E
	left join DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP
order by E.EMP_ID;

-- Query 2B
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES E
	left join DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP
where year(E.B_DATE) < 1980
order by E.EMP_ID;

-- Query 2C
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES E
	left join DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP and year(E.B_DATE) < 1980
order by E.EMP_ID;

-- Query 3A
select E.F_NAME, E.L_NAME, D.DEP_NAME
from EMPLOYEES E
	full join DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP;
	
-- Query 3B
select E.F_NAME, E.L_NAME, D.DEPT_ID_DEP, D.DEP_NAME
from EMPLOYEES E
	full join DEPARTMENTS D on E.DEP_ID = D.DEPT_ID_DEP and E.SEX = 'M';