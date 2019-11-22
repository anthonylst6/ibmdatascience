-- View the PETSALE table
select * from PETSALE;

-- Sum of column
select sum(SALEPRICE) from PETSALE;
select sum(SALEPRICE) as SUM_OF_SALEPRICE from PETSALE;

-- Maximum of column
select max(QUANTITY) from PETSALE;
select min(ID) from PETSALE where ANIMAL = 'Dog';

-- Average of column
select avg(SALEPRICE) as SALEPRICE from PETSALE;
select avg(SALEPRICE / QUANTITY) as AVG_SALEPRICE from PETSALE where ANIMAL = 'Dog';

-- Rounding
select round(SALEPRICE) from PETSALE;

-- Length
select length(ANIMAL) from PETSALE;

-- Uppercase and lowercase
select ucase(ANIMAL) from PETSALE;
select * from PETSALE where lcase(ANIMAL) = 'cat';
select distinct(ucase(ANIMAL)) from PETSALE;

-- Date and Time
select day(SALEDATE) from PETSALE where ANIMAL = 'Cat';
select count(*) from PETSALE where month(SALEDATE) = '05';
select (SALEDATE + 3 days) from PETSALE;
select (current_date - SALEDATE) from PETSALE;