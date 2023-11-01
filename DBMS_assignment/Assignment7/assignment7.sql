1. Write a query that lists each order number followed by the name of the customer who
made the order.




mysql> select orders.onum , customers.cname from customers join orders on customers.cnum = orders.cnum;
+------+----------+
| onum | cname    |
+------+----------+
| 3001 | Cisneros |
| 3003 | Hoffman  |
| 3002 | Pereira  |
| 3005 | Liu      |
| 3006 | Cisneros |
| 3009 | Giovanni |
| 3007 | Grass    |
| 3008 | Clemens  |
| 3010 | Grass    |
| 3011 | Clemens  |
+------+----------+
10 rows in set (0.00 sec)






2. Write a query that gives the names of both the salesperson and the customer for
each order along with the order number.



mysql> select cust.cname , sales.sname , o.onum from customers as cust
    -> join salespeople as sales on cust.snum = sales.snum
    -> join orders as o on cust.cnum = o.cnum;
+----------+---------+------+
| cname    | sname   | onum |
+----------+---------+------+
| Cisneros | Rifkin  | 3001 |
| Hoffman  | Peel    | 3003 |
| Pereira  | Motika  | 3002 |
| Liu      | Serres  | 3005 |
| Cisneros | Rifkin  | 3006 |
| Giovanni | Axelrod | 3009 |
| Grass    | Serres  | 3007 |
| Clemens  | Peel    | 3008 |
| Grass    | Serres  | 3010 |
| Clemens  | Peel    | 3011 |
+----------+---------+------+
10 rows in set (0.00 sec)





3. Write a query that produces all customers serviced by salespeople with a commission
above 12%. Output the customer’s name, the salesperson’s name, and the
salesperson’s rate of commission.




mysql> select cust.cname , sales.sname , sales.comm  from customers as cust join sal
espeople as sales on cust.snum = sales.snum where sales.comm > 0.12;
+----------+--------+------+
| cname    | sname  | comm |
+----------+--------+------+
| Liu      | Serres | 0.13 |
| Grass    | Serres | 0.13 |
| Cisneros | Rifkin | 0.15 |
+----------+--------+------+
3 rows in set (0.00 sec)






4. Write a query that calculates the amount of the salesperson’s commission on each
order by a customer with a rating above 100.


mysql> select s.sname , o.amt , c.rating , ( o.amt * s.comm) as commission from salespeople as s 
inner join orders as o on s.snum = o.snum 
inner join customers as c on c.cnum = o.cnum  
where c.rating > 100
order by c.rating ;


+---------+---------+--------+------------+
| sname   | amt     | rating | commission |
+---------+---------+--------+------------+
| Serres  | 5160.45 |    200 |   670.8585 |
| Axelrod | 1713.23 |    200 |   171.3230 |
| Serres  |  309.95 |    300 |    40.2935 |
| Serres  |   75.75 |    300 |     9.8475 |
| Rifkin  | 1098.16 |    300 |   164.7240 |
| Rifkin  |   18.69 |    300 |     2.8035 |
+---------+---------+--------+------------+
6 rows in set (0.00 sec)

 



5. Write a query that produces all pairs of salespeople who are living in the same
city.Exclude combinations of salespeople with themselves as well as duplicate rows
with the order reversed



mysql> select s.sname , sp.sname , s.city from salespeople as s  inner join salespeople as sp on s.snum != sp.snum and s.city = sp.city and s.sname > sp.sname ;
+-------+--------+--------+
| sname | sname  | city   |
+-------+--------+--------+
| Peel  | Motika | London |
+-------+--------+--------+
1 row in set (0.00 sec)








PART 2


1. Display the Supplier name and the Quantity sold.

mysql> select S.Sname , sum(SP.QTY) FROM S left join SP ON S.`S#` = SP.`S#` group by S.Sname;
+-------+-------------+
| Sname | sum(SP.QTY) |
+-------+-------------+
| SMITH |         900 |
| JONES |        3200 |
| Blake |         700 |
| Clark |         600 |
| Adams |        3100 |
+-------+-------------+
5 rows in set (0.00 sec)



2. Display the Part name and Quantity sold.

mysql> select P.Pname , sum(SP.QTY) from P  left join SP on P.`P#` = SP.`P#` GROUP BY P.Pname;
+-------+-------------+
| Pname | sum(SP.QTY) |
+-------+-------------+
| Nut   |        1000 |
| Bolt  |         300 |
| Screw |        4800 |
| Cam   |        1100 |
| Cog   |        1300 |
+-------+-------------+
5 rows in set (0.00 sec)


3. Display the Job name and Quantity sold.


mysql> select J.Jname , sum(SP.QTY) from J  left join SP on J.`J#` = SP.`J#` GROUP BY J.Jname;
+----------+-------------+
| Jname    | sum(SP.QTY) |
+----------+-------------+
| Sorter   |         800 |
| Punch    |        1200 |
| Reader   |         500 |
| Console  |        3300 |
| Collator |        1100 |
| Terminal |         400 |
| Tape     |        1200 |
+----------+-------------+
7 rows in set (0.00 sec)





4. Display the Supplier name, Part name, Job name and Quantity sold.


mysql> select S.Sname , P.Pname , J.Jname ,  SP.QTY from SP JOIN S on S.`S#` = SP.`S#` JOIN P on P.`P#` = SP.`P#` JOIN J on J.`J#` = SP.`J#`;
+-------+-------+----------+------+
| Sname | Pname | Jname    | QTY  |
+-------+-------+----------+------+
| JONES | Screw | Sorter   |  400 |
| Blake | Screw | Sorter   |  200 |
| SMITH | Nut   | Sorter   |  200 |
| Adams | Cog   | Punch    |  200 |
| JONES | Cam   | Punch    |  100 |
| Blake | Screw | Punch    |  500 |
| JONES | Screw | Punch    |  200 |
| Adams | Bolt  | Punch    |  200 |
| Clark | Cog   | Reader   |  300 |
| JONES | Screw | Reader   |  200 |
| Adams | Cog   | Console  |  500 |
| Adams | Cam   | Console  |  400 |
| Adams | Screw | Console  |  800 |
| JONES | Screw | Console  |  500 |
| Adams | Screw | Console  |  200 |
| Adams | Bolt  | Console  |  100 |
| SMITH | Nut   | Console  |  700 |
| Adams | Nut   | Console  |  100 |
| Adams | Cam   | Collator |  500 |
| JONES | Screw | Collator |  600 |
| JONES | Screw | Terminal |  400 |
| Clark | Cog   | Tape     |  300 |
| Adams | Cam   | Tape     |  100 |
| JONES | Screw | Tape     |  800 |
+-------+-------+----------+------+
24 rows in set (0.00 sec)





5. Display the Supplier name, Supplying Parts to a Job in the same City.


mysql> select S.Sname , P.Pname ,J.Jname ,P.city from S inner join P on S.city = P.city inner join J on S.city = J.city;
+-------+-------+----------+--------+
| Sname | Pname | Jname    | city   |
+-------+-------+----------+--------+
| JONES | Cam   | Sorter   | Paris  |
| Blake | Cam   | Sorter   | Paris  |
| JONES | Bolt  | Sorter   | Paris  |
| Blake | Bolt  | Sorter   | Paris  |
| SMITH | Cog   | Collator | London |
| Clark | Cog   | Collator | London |
| SMITH | Screw | Collator | London |
| Clark | Screw | Collator | London |
| SMITH | Nut   | Collator | London |
| Clark | Nut   | Collator | London |
| SMITH | Cog   | Tape     | London |
| Clark | Cog   | Tape     | London |
| SMITH | Screw | Tape     | London |
| Clark | Screw | Tape     | London |
| SMITH | Nut   | Tape     | London |
| Clark | Nut   | Tape     | London |
+-------+-------+----------+--------+
16 rows in set (0.00 sec)




6. Display the Part name that is ‘Red’ is color, and the Quantity sold.


mysql> select P.Pname  from P right join SP on P.`P#` = SP.`P#` WHERE P.color = "Red";
+-------+
| Pname |
+-------+
| Nut   |
| Nut   |
| Screw |
| Cog   |
| Cog   |
| Cog   |
| Nut   |
| Screw |
| Cog   |
+-------+
9 rows in set (0.00 sec)

7. Display all the Quantity sold by Suppliers with the Status = 20.


mysql> SELECT S.Sname ,sum(SP.QTY) from S left join SP on S.`S#` = SP.`S#` where S.status = 20 group by S.Sname,S.status;
+-------+-------------+
| Sname | sum(SP.QTY) |
+-------+-------------+
| SMITH |         900 |
| Clark |         600 |
+-------+-------------+
2 rows in set (0.00 sec)





8. Display all the Parts and Quantity with a Weight > 14.


mysql> select P.Pname ,SP.QTY from P left join SP on P.`P#` = SP.`P#` WHERE P.weight
> 14;
+-------+------+
| Pname | QTY  |
+-------+------+
| Bolt  |  100 |
| Bolt  |  200 |
| Screw |  200 |
| Screw |  200 |
| Screw |  800 |
| Screw |  400 |
| Screw |  600 |
| Screw |  500 |
| Screw |  200 |
| Screw |  200 |
| Screw |  400 |
| Cog   |  500 |
| Cog   |  200 |
| Cog   |  300 |
| Cog   |  300 |
+-------+------+
15 rows in set (0.00 sec)




9. Display all the Job names and City, which has bought more than 500 Parts.


mysql> select J.Jname , J.city , SUM(SP.QTY) from J inner join SP on J.`J#` = SP.`J#` GROUP BY J.Jname , J.city having SUM(SP.QTY) > 500;
+----------+--------+-------------+
| Jname    | city   | SUM(SP.QTY) |
+----------+--------+-------------+
| Sorter   | Paris  |         800 |
| Console  | Athens |        3300 |
| Punch    | Rome   |        1200 |
| Collator | London |        1100 |
| Tape     | London |        1200 |
+----------+--------+-------------+
5 rows in set (0.00 sec)






10. Display all the Part names and Quantity sold that have a Weight less than 15.


mysql> select P.Pname ,sum(SP.QTY) from P left join SP on P.`P#` = SP.`P#` WHERE P.we
ight < 15 group by P.Pname;
+-------+-------------+
| Pname | sum(SP.QTY) |
+-------+-------------+
| Nut   |        1000 |
| Screw |        1300 |
| Cam   |        1100 |
+-------+-------------+
3 rows in set (0.00 sec)




11. Display all the Suppliers with the same Status as the supplier, ‘CLARK


select s.sname,s.status from s inner join s s1 on s.status=s1.status where s1.sname='CLARK' AND s.sname!='CLARK';




12. Display all the Parts which have more Weight than any Red parts.


select p.pname,p.color,p.weight,p1.color from p cross join p p1 where p1.color='red' group by p.pname,p.color,p.weight,p1.color having p.weight>min(p1.weight);




13. Display all the Jobs going on in the same city as the job ‘TAPE’.


select a.jname,b.city from J a inner join J b on a.city=b.city where b.Jname='TAPE' and a.jname!='TAPE';



14. Display all the Parts with Weight less than any the Green parts.

select p.pname,p.color,p.weight,p1.color from p cross join p p1 where p1.color='green' group by p.pname,p.color,p.weight,p1.color having p.weight<max(p1.weight);


15. Display the name of the Supplier who has sold the maximum Quantity (in onesale).


SELECT s.sname, (sp.qty) FROM s s INNER JOIN sp sp ON s.`s#`=sp.`s#` ORDER BY sp.qty DESC LIMIT 1 ;



16. Display the name of the Supplier who has sold the maximum overall Quantity
(sumof Sales).



SELECT s.sname, SUM(sp.qty) AS Tqty FROM s s INNER JOIN sp sp ON s.`s#`=sp.`s#` GROUP BY s.sname ORDER BY Tqty DESC LIMIT 1;
