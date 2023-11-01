1. Write a query that uses a subquery to obtain all orders for the customer named
Cisneros. Assume you do not know his customer number (cnum).

mysql> select onum from orders where cnum in  (select cnum from customers where cname="Cisneros");

+------+
| onum |
+------+
| 3001 |
| 3006 |
+------+

4. Write a query that selects all customers whose ratings are equal to or greater than
ANY of Serres’.

select cname from customers where rating >= any(select distinct rating from customers where snum in (select snum from salespeople where sname="Serres"));
+----------+
| cname    |
+----------+
| Giovanni |
| Liu      |
| Grass    |
| Cisneros |
+----------+

6. Write a query that selects all orders for amounts greater than any for the customers in
London.
 select amt from orders where amt > any (select amt from orders where cnum =  any(select distin
ct cnum from customers where city="London"));
+---------+
| amt     |
+---------+
| 1900.10 |
| 5160.45 |
| 1098.16 |
| 1713.23 |
| 4723.00 |
| 9891.88 |
+---------+

7. Extract all the orders of Motika.
mysql> select onum from orders where snum = any (select snum from salespeople where sname="Motika");
+------+
| onum |
+------+
| 3002 |
+------+

8. Find all the order attribute to salespeople servicing customers in London.

select * from orders where snum = any( select snum from salespeople where city="London");
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3008 | 4723.00 | 1990-10-04 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-04 | 2006 | 1001 |
+------+---------+------------+------+------+
4 rows in set (0.00 sec)

11. Select customers who have a greater rating than any other customer in Rome.
mysql> select cnum from customers where rating> any(select rating from customers where city="Rome") and city != "Rome";
+------+
| cnum |
+------+
| 2003 |
| 2004 |
| 2008 |
+------+
3 rows in set (0.00 sec)

12. Select all orders that had amounts that were greater that atleast one of the orders
from ‘1990-10-04’ .
mysql> select onum from orders where amt> any( select amt from orders where odate="1990-10-04");
+------+
| onum |
+------+
| 3003 |
| 3002 |
| 3005 |
| 3006 |
| 3009 |
| 3008 |
| 3010 |
| 3011 |
+------+
8 rows in set (0.00 sec)

13. Find all orders with amounts smaller than any amount for a customer in San Jose.
select onum , amt from orders where amt< any(select amt from orders where cnum = any (select cnum from customers where city="San Jose"));
+------+---------+
| onum | amt     |
+------+---------+
| 3001 |   18.69 |
| 3003 |  767.19 |
| 3002 | 1900.10 |
| 3006 | 1098.16 |
| 3009 | 1713.23 |
| 3007 |   75.75 |
| 3008 | 4723.00 |
| 3010 |  309.95 |
+------+---------+

14. Select those customers whose rating are higher than every customer in Paris.
select cnum , cname from customers where rating > (select rating from customers where city="Paris");
Empty set (0.00 sec)



