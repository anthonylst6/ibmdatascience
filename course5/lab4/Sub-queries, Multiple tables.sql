-- SUB-QUERIES

-- Sub-query (a query inside another query)
select F_NAME, L_NAME, SALARY from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES);

-- Column expressions (subsitute column name with a sub-query)
select EMP_ID, SALARY,
(select avg(SALARY) from EMPLOYEES) as AVG_SALARY
from EMPLOYEES;

-- Derived Tables or Table Expressions (substitute table name with sub-query)
select * from
	( select EMP_ID, F_NAME, L_NAME, DEP_ID from EMPLOYEES ) as EMP4ALL;
	

-- MULTIPLE TABLES

-- Multiple tables with Sub-queries
select * from EMPLOYEES
	where DEP_ID in ( select DEPT_ID_DEP from DEPARTMENTS );
select * from EMPLOYEES
	where DEP_ID in (select DEPT_ID_DEP from DEPARTMENTS where LOC_ID = 'L0002');
select DEPT_ID_DEP, DEP_NAME from DEPARTMENTS
	where DEPT_ID_DEP in ( select DEP_ID from EMPLOYEES where SALARY > 70000 );
	
-- Accessing multiple tables with Implicity Join
select * from EMPLOYEES, DEPARTMENTS;
select * from EMPLOYEES, DEPARTMENTS
	where EMPLOYEES.DEP_ID = DEPARTMENTS.DEPT_ID_DEP;
select * from EMPLOYEES E, DEPARTMENTS D
	where E.DEP_ID = D.DEPT_ID_DEP;
select EMPLOYEES.EMP_ID, DEPARTMENTS.DEPT_NAME
from EMPLOYEES E, DEPARTMENTS D
	where E.DEP_ID = D.DEPT_ID_DEP;
select E.EMP_ID, D.DEP_NAME
from EMPLOYEES E, DEPARTMENTS D
	where E.DEP_ID = D.DEPT_ID_DEP;