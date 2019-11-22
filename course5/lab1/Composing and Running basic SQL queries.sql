-- Task 0
drop table INSTRUCTOR;

-- Task 1
create table INSTRUCTOR (
	ins_id integer PRIMARY KEY NOT NULL,
	lastname varchar(15) NOT NULL,
	firstname varchar(15) NOT NULL,
	city varchar(15),
	country char(2)
	);
	
-- Task 2A
INSERT INTO INSTRUCTOR
	(ins_id, lastname, firstname, city, country)
	VALUES
	(1, 'Ahuja', 'Rav', 'Toronto', 'CA');
	
-- Task 2B
INSERT INTO INSTRUCTOR
	VALUES
	(2, 'Chong', 'Raul', 'Toronto', 'CA'),
	(3, 'Vasudevan', 'Hima', 'Chicago', 'US');
	
-- Task 3
SELECT * from INSTRUCTOR;

-- Task 3B
SELECT firstname, lastname, country from INSTRUCTOR where city = 'Toronto';

-- Task 4
UPDATE INSTRUCTOR SET city = 'Markham' WHERE ins_id = 1;

-- Task 5
DELETE from INSTRUCTOR where ins_id = 2;

-- Task 5B
SELECT * from INSTRUCTOR;