-- PART II

-- Question 1
-- Yes, this was due to the entries in the loaded data exceeding the character limit of the table.
-- The entries were truncated as a result. To get around this can reset character limit in table.

-- Question 2
-- No, one row was deleted because there were multiple entries with the same primary key.

-- PART III

-- Query 1
select *
from EMPLOYEES
where ADDRESS like '%Elgin,IL' ;

-- Query 2
select *
from EMPLOYEES
where B_DATE like '%197%' ;

-- Query 3
select *
from EMPLOYEES
where DEP_ID = 5 and (SALARY between 60000 and 70000) ;

-- Query 4A
select F_NAME, L_NAME, DEP_ID
from EMPLOYEES
order by DEP_ID ;

-- Query 4B
select F_NAME, L_NAME, DEP_ID
from EMPLOYEES
order by DEP_ID desc, L_NAME desc ;

-- Query 5A
select DEP_ID, count(*) as count
from EMPLOYEES
group by DEP_ID ;

-- Query 5B
select DEP_ID, count(*), avg(SALARY)
from EMPLOYEES
group by DEP_ID ;

-- Query 5C
select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY
from EMPLOYEES
group by DEP_ID ;

-- Query 5D
select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as "AVG_SALARY"
from EMPLOYEES
group by DEP_ID
order by AVG_SALARY ;

-- Query 5E
select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as "AVG_SALARY"
from EMPLOYEES
group by DEP_ID having count(*) < 4
order by AVG_SALARY ;

-- Query 6
select D.DEP_NAME , E.F_NAME, E.L_NAME
from EMPLOYEES as E, DEPARTMENTS as D
where E.DEP_ID = D.DEPT_ID_DEP
order by D.DEP_NAME, E.L_NAME desc ;