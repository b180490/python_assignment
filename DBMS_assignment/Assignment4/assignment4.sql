1. Display the PNAME and COLOR from the P table for the
CITY=”London”.


mysql> SELECT Pname , color from P where city = "London";
+-------+-------+
| Pname | color |
+-------+-------+
| Nut   | Red   |
| Screw | Red   |
| Cog   | Red   |
+-------+-------+
3 rows in set (0.00 sec)


********************************************************************



2. Display all the Suppliers from London.


mysql> select * from P WHERE city = "London";


+----+-------+-------+--------+--------+
| P# | Pname | color | weight | city   |
+----+-------+-------+--------+--------+
| P1 | Nut   | Red   |     12 | London |
| P4 | Screw | Red   |     14 | London |
| P6 | Cog   | Red   |     19 | London |
+----+-------+-------+--------+--------+
3 rows in set (0.00 sec)



*************************************************************************


3. Display all the Suppliers from Paris or Athens



SELECT Sname , CITY from S WHERE city in ("Athens","Paris");
+-------+--------+
| Sname | CITY   |
+-------+--------+
| JONES | PARIS  |
| Blake | Paris  |
| Adams | Athens |
+-------+--------+
3 rows in set (0.01 sec)





**************************************************************************

4 Display all the Jobs in Athens.


select * from J where city = "Athens";
+----+---------+--------+
| J# | Jname   | city   |
+----+---------+--------+
| J3 | Reader  | Athens |
| J4 | Console | Athens |
+----+---------+--------+
2 rows in set (0.00 sec)


***********************************************************************

5 Display all the Part names with the weight between 12 and 14
(inclusive of both).


mysql> select pname from P where weight between 14 and 18;
+-------+
| pname |
+-------+
| Bolt  |
| Screw |
| Screw |
+-------+
3 rows in set (0.00 sec)


****************************************************************************

6. Display all the Suppliers except the Suppliers from London.


select * from S where city != "London";
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S2 | JONES |     10 | PARIS  |
| S3 | Blake |     30 | Paris  |
| S5 | Adams |     30 | Athens |
+----+-------+--------+--------+
3 rows in set (0.00 sec)

********************************************************************************

7 . Display all the Suppliers with a Status greater than or equal
to 20. 


mysql> select * from S where status > 20;
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S3 | Blake |     30 | Paris  |
| S5 | Adams |     30 | Athens |
+----+-------+--------+--------+
2 rows in set (0.00 sec)


**********************************************************************


8. Display the Supplier table in the descending order of CITY. 


mysql> select * from S order by city desc;
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S2 | JONES |     10 | PARIS  |
| S3 | Blake |     30 | Paris  |
| S1 | SMITH |     20 | London |
| S4 | Clark |     20 | London |
| S5 | Adams |     30 | Athens |
+----+-------+--------+--------+
5 rows in set (0.00 sec)


**********************************************************************************

9. Display only the Cities from where the Suppliers come from. 

mysql> select distinct (city) from S;
+--------+
| city   |
+--------+
| London |
| PARIS  |
| Athens |
+--------+
3 rows in set (0.00 sec)

*************************************************************************************

10. Display the Part Table in the ascending order of CITY and
within the city in the ascending order of Part names.



mysql> select * from P order by city , Pname;
+----+-------+-------+--------+--------+
| P# | Pname | color | weight | city   |
+----+-------+-------+--------+--------+
| P6 | Cog   | Red   |     19 | London |
| P1 | Nut   | Red   |     12 | London |
| P4 | Screw | Red   |     14 | London |
| P2 | Bolt  | Green |     17 | Paris  |
| P5 | Cam   | Blue  |     12 | Paris  |
| P3 | Screw | Blue  |     17 | Rome   |
+----+-------+-------+--------+--------+
6 rows in set (0.00 sec)

************************************************************************************

11. Display all the Suppliers with a status between 10 and 20.


mysql> select * from S WHERE status between 10 and 20;
+----+-------+--------+--------+
| S# | Sname | status | city   |
+----+-------+--------+--------+
| S1 | SMITH |     20 | London |
| S2 | JONES |     10 | PARIS  |
| S4 | Clark |     20 | London |
+----+-------+--------+--------+
3 rows in set (0.00 sec)


***********************************************************************************

12. 12. Display all the Parts and their Weight, which are not in the
range of 10 and 15.


mysql> select pname , weight from P where weight not between 10  and 15;
+-------+--------+
| pname | weight |
+-------+--------+
| Bolt  |     17 |
| Screw |     17 |
| Cog   |     19 |
+-------+--------+
3 rows in set (0.00 sec)

