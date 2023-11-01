 1. Write a query that uses a subquery to obtain all orders for the customer named
Cisneros. Assume you do not know his customer number (cnum).


mysql> select onum , amt , odate , cnum from orders where cnum  = (select cnum from customers where cname = "Cisneros") ;
+------+---------+------------+------+
| onum | amt     | odate      | cnum |
+------+---------+------------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 |
| 3006 | 1098.16 | 1990-10-03 | 2008 |
+------+---------+------------+------+
2 rows in set (0.00 sec)




2. Write a query that produces the names and ratings of all customers who have above-
average orders.



mysql> SELECT * FROM customers WHERE cnum = ANY(SELECT cnum from orders where amt > (select avg(amt) from orders));
+------+---------+----------+--------+------+
| cnum | cname   | city     | rating | snum |
+------+---------+----------+--------+------+
| 2003 | Liu     | San Jose |    200 | 1002 |
| 2006 | Clemens | London   |    100 | 1001 |
+------+---------+----------+--------+------+
2 rows in set (0.00 sec)




3. Write a query that selects the total amount in orders for each salesperson for whom
this total is greater than the amount of the largest order in the table.


mysql> select snum ,  sum(amt)  from orders group by snum having sum(amt ) > (SELECT
max(amt) from orders);
+------+----------+
| snum | sum(amt) |
+------+----------+
| 1001 | 15382.07 |
+------+----------+
1 row in set (0.00 sec)





4. Write a query that selects all customers whose ratings are equal to or greater than
ANY of Serres’.


mysql> select cname , rating from customers where rating >= ANY(select rating from customers where snum = 1002 );
+----------+--------+
| cname    | rating |
+----------+--------+
| Giovanni |    200 |
| Liu      |    200 |
| Grass    |    300 |
| Cisneros |    300 |
+----------+--------+
4 rows in set (0.00 sec)



5. Write a query using ANY or ALL that will find all salespeople who have no customers
located in their city.


mysql> select s.snum , s.sname ,s.city as sales_city , c.city as cust_city from salespeople as s inner join customers as c on s.snum = c.snum and s.city != c.city ; 
+------+---------+------------+-----------+
| snum | sname   | sales_city | cust_city |
+------+---------+------------+-----------+
| 1003 | Axelrod | New York   | Rome      |
| 1002 | Serres  | San Jose   | Berlin    |
| 1007 | Rifkin  | Barcelona  | San Jose  |
| 1004 | Motika  | London     | Rome      |
+------+---------+------------+-----------+
4 rows in set (0.00 sec)




6. Write a query that selects all orders for amounts greater than any for the customers in
London.

mysql> select onum , amt , odate  from orders where snum =  ANY  (select snum from customers where city = "London" );
+------+---------+------------+
| onum | amt     | odate      |
+------+---------+------------+
| 3003 |  767.19 | 1990-10-03 |
| 3008 | 4723.00 | 1990-10-04 |
| 3011 | 9891.88 | 1990-10-04 |
+------+---------+------------+
3 rows in set (0.00 sec)




7. Extract all the orders of Motika.


mysql> select * from orders where snum = (select snum from salespeople where sname = "Motika");
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
+------+---------+------------+------+------+
1 row in set (0.00 sec)







8. Find all the order attribute to salespeople servicing customers in London.


mysql> select * from orders where snum = ANY(Select snum from salespeople where city = "London");
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+
4 rows in set (0.00 sec)





9. Find names and numbers of all salesperson who have more than one customer.


mysql> select sname , snum from salespeople where snum = ANY(select snum from customers group by snum having count(cnum) > 1 );
+--------+------+
| sname  | snum |
+--------+------+
| Peel   | 1001 |
| Serres | 1002 |
+--------+------+
2 rows in set (0.00 sec)





10. Find salespeople number,name and city who have multiple customers.


mysql> select sname , snum , city from salespeople where snum in (select snum from customers group by snum having count(snum)   > 1);
+--------+------+----------+
| sname  | snum | city     |
+--------+------+----------+
| Peel   | 1001 | London   |
| Serres | 1002 | San Jose |
+--------+------+----------+
2 rows in set (0.04 sec)





11. Select customers who have a greater rating than any other customer in Rome.


mysql> select cnum , cname , city , rating from customers where rating > ANY(select rating from customers where city = "ROME") and city != "ROME" ;
+------+----------+----------+--------+
| cnum | cname    | city     | rating |
+------+----------+----------+--------+
| 2003 | Liu      | San Jose |    200 |
| 2004 | Grass    | Berlin   |    300 |
| 2008 | Cisneros | San Jose |    300 |
+------+----------+----------+--------+
3 rows in set (0.00 sec)






12. Select all orders that had amounts that were greater that atleast one of the orders
from ‘1990-10-04’ .


mysql> select onum , amt from orders where amt > ANY(select amt from orders where odate = "1990-10-04") and odate != "1990-10-04";
+------+---------+
| onum | amt     |
+------+---------+
| 3003 |  767.19 |
| 3002 | 1900.10 |
| 3005 | 5160.45 |
| 3006 | 1098.16 |
+------+---------+
4 rows in set (0.00 sec)






13. Find all orders with amounts smaller than any amount for a customer in San Jose.


mysql> select * from orders where amt < ANY(select amt from orders where snum in (sel
ect snum from customers where city = "San Jose"));
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3010 |  309.95 | 1990-10-04 | 2004 | 1002 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)






14. Select those customers whose rating are higher than every customer in Paris.


mysql> select cname from customers where rating > ALL(select rating from customers wh
ere city = "Paris" );
+----------+
| cname    |
+----------+
| Hoffman  |
| Giovanni |
| Liu      |
| Grass    |
| Clemens  |
| Cisneros |
| Pereira  |
+----------+
7 rows in set (0.00 sec)


