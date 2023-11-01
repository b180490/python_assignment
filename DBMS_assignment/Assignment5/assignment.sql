 1. Display first name and last name after converting the first letter of each name to upper case and the rest to lower case.

select concat(upper(left(first_name,1)),lower(substring(first_name,2))), concat(upper(left(last_name,1)),lower(substring(last_name,2))) from employees;

-------------------------------+
| concat(upper(left(first_name,1)),lower(substring(first_name,2))) | concat(upper(left(last_name,1)),lower(substring(last_name,2))) |
+------------------------------------------------------------------+----------------------------------------------------------------+
| Ellen                                                            | Abel                                                           |
| Sundar                                                           | Ande                                                           |
| Mozhe                                                            | Atkinson                                                       |
| David                                                            | Austin                                                         |
| Hermann                                                          | Baer                                                           |
| Shelli                                                           | Baida                                                          |
| Amit                                                             | Banda                                                          |
| Elizabeth                                                        | Bates                                                          |
| Sarah                                                            | 


2. Display the first word in job title.
select left(job_title,1) from jobs;

+-------------------+
| left(job_title,1) |
+-------------------+
| P                 |
| A                 |
| A                 |
| F                 |
| A                 |
| A                 |
| P                 |
| S                 |
| S                 |
| P                 |
| P                 |
| S                 |
| S                 |
| S                 |
| P                 |
| M                 |
| M                 |
| H                 |
| P                 |
+-------------------+


3. Display the length of first name for employees where last name contain character ‘b’ after 3rd position.
select length(first_name) from employees where last_name like '___b%';
+--------------------+
| length(first_name) |
+--------------------+
|                  6 |
|                  7 |
+--------------------+


4. Display first name in upper case and email address in lower case for employees where the first name and email address are same irrespective of the case.
 select upper(first_name),lower(email) from employees where lower(first_name) = lower(email);
Empty set (0.03 sec)

5. Display first name, salary, and round the salary to thousands.
  select first_name,round(salary) from employees;
  +-------------+---------------+
| first_name  | round(salary) |
+-------------+---------------+
| Steven      |         24000 |
| Neena       |         17000 |
| Lex         |         17000 |
| Alexander   |          9000 |
| Bruce       |          6000 |
| David       |          4800 |
| Valli       |          4800 |
| Diana       |          4200 |
| Nancy       |         12000 |
| Daniel      |          9000 |
| John        |          8200 |
| Ismael      |          7700 |
| Jose Manuel |          7800 |
| Luis        |          6900 |
| Den         |         11000 |
| Alexander   |          3100 |


6. Display employee ID and the date on which he ended his previous job
  select employee_id,end_date from job_history;
  
+-------------+------------+
| employee_id | end_date   |
+-------------+------------+
|         102 | 1998-07-24 |
|         101 | 1993-10-27 |
|         101 | 1997-03-15 |
|         201 | 1999-12-19 |
|         114 | 1999-12-31 |
|         122 | 1999-12-31 |
|         200 | 1993-06-17 |
|         176 | 1998-12-31 |
|         176 | 1999-12-31 |
|         200 | 1998-12-31 |
|           0 | 0000-00-00 |
+-------------+------------+


7. Display first name and date of first salary of the employees.(Consider 1st day of month as salary day) HINT: LAST_DAY.
 
 select first_name , hire_date,Date_add(hire_date,INTERVAL 1 MONTH) as first_salary_date from employees;

+-------------+------------+-------------------+
| first_name  | hire_date  | first_salary_date |
+-------------+------------+-------------------+
| Steven      | 1987-06-17 | 1987-07-17        |
| Neena       | 1987-06-18 | 1987-07-18        |
| Lex         | 1987-06-19 | 1987-07-19        |
| Alexander   | 1987-06-20 | 1987-07-20        |
| Bruce       | 1987-06-21 | 1987-07-21        |
| David       | 1987-06-22 | 1987-07-22        |
| Valli       | 1987-06-23 | 1987-07-23        |
| Diana       | 1987-06-24 | 1987-07-24        |
| Nancy       | 1987-06-25 | 1987-07-25        |
| Daniel      | 1987-06-26 | 1987-07-26        |
| John        | 1987-06-27 | 1987-07-27        |
| Ismael      | 1987-06-28 | 1987-07-28        |
| Jose Manuel | 1987-06-29 | 1987-07-29        |
| Luis        | 1987-06-30 | 1987-07-30        |
| Den         | 1987-07-01 | 1987-08-01        |
| Alexander   | 1987-07-02 | 1987-08-02        |
| Shelli      | 1987-07-03 | 1987-08-03        |

8. Display first name and experience of the employees.
select first_name , timestampdiff(year,hire_date,now()) as experience from employees;

+-------------+------------+
| first_name  | experience |
+-------------+------------+
| Steven      |         36 |
| Neena       |         36 |
| Lex         |         36 |
| Alexander   |         36 |
| Bruce       |         36 |
| David       |         36 |
| Valli       |         36 |
| Diana       |         36 |
| Nancy       |         36 |
| Daniel      |         36 |
| John        |         36 |
| Ismael      |         36 |
| Jose Manuel |         36 |
| Luis        |         36 |
| Den         |         36 |


9.  Display first name of employees who joined in 2001 
select first_name from employees where year(hire_date)=2001;
Empty set (0.00 sec)


10. . Display employees who joined in the current year.
select * from employees where year(hire_date) = year(now());
Empty set (0.00 sec)

11. Display the number of days between system date and 1st January 2011.

select DATEDIFF(date(sysdate()),'2011-01-01');
+----------------------------------------+
| DATEDIFF(date(sysdate()),'2011-01-01') |
+----------------------------------------+
|                                   4683 |
+----------------------------------------+

12.Display number of employees joined after 15th of the month.
 
 select count(first_name) from employees where day(hire_date) > 15;
 +-------------------+
| count(first_name) |
+-------------------+
|                61 |
+-------------------+


13.Display third highest salary of employees
 select distinct salary from employees order by salary desc limit 2,1;
 +----------+
| salary   |
+----------+
| 14000.00 |
+----------+

1.Display all the Suppliers, belonging to cities starting with the letter ‘L’.
 
 SELECT * FROM S where LEFT(city,1)='L';
 mysql> SELECT * FROM S where LEFT(city,1)='L';
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S1 | Smith |     20 | London |
| S4 | Clark |     20 | London |
+----+-------+--------+--------+


2.Display all the Jobs, with the third letter in JNAME as ‘n
 SELECT * FROM J WHERE JNAME LIKE "__n%";
 
 +----+---------+--------+
| J# | Jname   | City   |
+----+---------+--------+
| J2 | Punch   | Rome   |
| J4 | Console | Athens |
+----+---------+--------+

3.Display all the Supplier names with the initial letter capital
 
 SELECT CONCAT(UPPER(left(Sname,1)),LOWER(SUBSTRING(Sname,2)) FROM S ;
 
4. Display all the Supplier names in upper case.
 SELECT UPPER(Sname) FROM S ;
 +--------------+
| UPPER(Sname) |
+--------------+
| SMITH        |
| JONES        |
| BLAKE        |
| CLARK        |
| ADAMS        |
+--------------+

5.Display all the Supplier names in lower case.
 SELECT LOWER(Sname) FROM S ;
 +--------------+
| LOWER(Sname) |
+--------------+
| smith        |
| jones        |
| blake        |
| clark        |
| adams        |
+--------------+


6.Display the Supplier names and the lengths of the names.
 SELECT Sname,Length(Sname) FROM S ;

+-------+---------------+
| Sname | Length(Sname) |
+-------+---------------+
| Smith |             5 |
| Jones |             5 |
| Blake |             5 |
| Clark |             5 |
| Adams |             5 |
+-------+---------------+


7.Display the current day (e.g. Thursday) 
 SELECT DAYNAME(NOW());
 SELECT DAYNAME(NOW());
+----------------+
| DAYNAME(NOW()) |
+----------------+
| Friday         |
+----------------+


8. Display the minimum Status in the Supplier table.
 SELECT MIN(status) FROM S;
 +-------------+
| MIN(status) |
+-------------+
|          10 |
+-------------+

9. Display the maximum Weight in the Parts table.
 SELECT MAX(weight) FROM P;
 +-------------+
| MAX(weight) |
+-------------+
|          19 |
+-------------+


10. Display the average Weight of the Parts.
 SELECT AVG(weight) FROM P;
 -------------+
| AVG(weight) |
+-------------+
|     15.1667 |
+-------------+

  
 
 12.Display all the Supplier names (with ‘la’ replaced by ‘ro’).
HINT: REPLACE.
 SELECT Replace(Sname,'la','ro') FROM S;
 +--------------------------+
| Replace(Sname,'la','ro') |
+--------------------------+
| Smith                    |
| Jones                    |
| Broke                    |
| Crork                    |
| Adams                    |
+--------------------------+





