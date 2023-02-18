/*Create a database named bootcamp.*/
CREATE DATABASE bootcamp;

/*Use the database named bootcamp.*/
USE bootcamp;

/*Create a table named students with the following fields:
    - student_id: SERIAL PRIMARY KEY
    - last_name: VARCHAR (100) NOT NULL
    - first_name: VARCHAR (50) NOT NULL
    - birth_date: DATE NOT NULL*/
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    last_name VARCHAR (100) NOT NULL,
    first_name VARCHAR (50) NOT NULL,
    birth_date DATE NOT NULL
);

/*Insert the following data into the students table:
    - last_name: Benichou
    - first_name: Marc
    - birth_date: 02/11/1998
    - last_name: Cohen
    - first_name: Yann
    - birth_date: 03/12/2010
    - last_name: Benichou
    - first_name: Léa
    - birth_date: 27/07/1987
    - last_name: Dux
    - first_name: Amélia
    - birth_date: 07/04/1996
    - last_name: Grez
    - first_name: David
    - birth_date: 14/06/2003
    - last_name: Simpson
    - first_name: Omer
    - birth_date: 03/10/1980
    - last_name: Konate
    - first_name: Mamadou
    - birth_date: 01/10/1999*/
INSERT INTO étudiants (last_name, first_name, birth_date)
VALUES ('Marc', 'Bénichou', '1998-11-02'),
('Yann', 'Cohen', '2010-12-03'),
('Léa', 'Bénichou', '1987-07-27'),
('Amélia', 'Dux', '1996-04-07'),
('David', 'Grez', '2003-06-14'),
('Omer', 'Simpson', '1980-10-03'),
('Mamadou', 'Konate', '199-10-01'); /* Replace the values with your own */


/*Select all the students from the students table.*/
SELECT * FROM étudiants;


/*Select all the students from the students tabble in first_name and last_name.*/
SELECT first_name, last_name FROM étudiants;


/* Select students from the students table where id is equal to 2.*/
SELECT * FROM étudiants WHERE id = 2;


/* Select students from the students table where last_name is equal to Benichou and first_name is equal to Marc.*/
SELECT * FROM étudiants WHERE last_name = 'Benichou' AND first_name = 'Marc';

/* Select students from the students table where last_name is equal to Benichou or first_name is equal to Marc.*/
SELECT * FROM étudiants WHERE last_name = 'Benichou' OR first_name = 'Marc';

/* Select students from the students table  where first_name contains an a.*/
SELECT * FROM étudiants WHERE first_name LIKE '%a%';

/* Select students from the students table where first_name starts with a.*/
SELECT * FROM étudiants WHERE first_name LIKE 'a%';

/* Select students from the students table where first_name ends with a.*/
SELECT * FROM étudiants WHERE first_name LIKE '%a';


SELECT * FROM étudiants WHERE first_name LIKE '_a%';



SELECT * FROM étudiants WHERE student_id IN (1, 3);


SELECT * FROM étudiants WHERE birth_date >= '2000-01-01';
