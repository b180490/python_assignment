1. Create an index that will enable a user to pull orders for ‘1990-10-03’ out of the
Orders table quickly.




mysql> create index idx_o_date on orders(odate);

mysql>explain format = json select * from orders where odate = "1990-10-03";

query cost 1.25 -----> 1.00




2. If the Orders table has already been created, how can you force the onum field to be
unique (assume all current values are unique)?



mysql> create unique index idx_o_onum on orders(onum);
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into orders(onum) values(3010);
ERROR 1062 (23000): Duplicate entry '3010' for key 'orders.idx_o_onum'

mysql> insert into orders(onum) values(3012);
Query OK, 1 row affected (0.80 sec)






3. Create an index that would permit salesperson to retrieve his orders.



mysql> create index idx_o_onum_snum on  orders(onum , snum);





4. Let us assume that each salesperson is to have only one customer of a given rating,
and that this is currently the case. Create an index that enforces it.


mysql> create index idx_o_cnum_snum on  orders(cnum , snum);




5. Create an index to speed up searching order on a given date by given customer.



mysql> create index idx_onum_odate on orders(onum , odate);

