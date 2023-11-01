mysql> select distinct department_id from employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+


select * from employees order by first_name desc;

-+----------+----------------+------------+---------------+
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP


mysql> select * from employees order by first_name desc limit 4;
+-------------+------------+-----------+---------+--------------------+------------+------------+---------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL   | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY  | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+---------+--------------------+------------+------------+---------+----------------+------------+---------------+
|         180 | Winston    | Taylor    | WTAYLOR | 650.507.9876       | 1987-09-05 | SH_CLERK   | 3200.00 |           0.00 |        120 |            50 |
|         171 | William    | Smith     | WSMITH  | 011.44.1343.629268 | 1987-08-27 | SA_REP     | 7400.00 |           0.15 |        148 |            80 |
|         206 | William    | Gietz     | WGIETZ  | 515.123.8181       | 1987-10-01 | AC_ACCOUNT | 8300.00 |           0.00 |        205 |           110 |
|         195 | Vance      | Jones     | VJONES  | 650.501.4876       | 1987-09-20 | SH_CLERK   | 2800.00 |           0.00 |        123 |            50 |
+-------------+------------+-----------+---------+--------------------+------------+------------+---


mysql> select employee_id , concat(first_name, last_name) as names ,salary from employees order by salary ;

+-------------+------------------+----------+
| employee_id | names            | salary   |
+-------------+------------------+----------+
|         132 | TJOlson          |  2100.00 |
|         128 | StevenMarkle     |  2200.00 |
|         136 | HazelPhiltanker  |  2200.00 |
|         127 | JamesLandry      |  2400.00 |
|         135 | KiGee            |  2400.00 |
|         119 | KarenColmenares  |  2500.00 |
|         131 | JamesMarlow      |  2500.00 |
|         140 | JoshuaPatel      |  2500.00 |
|         144 | PeterVargas      |  2500.00 |
|         182 | MarthaSullivan   |  2500.00 |
|         191 | RandallPerkins   |  2500.00 |
|         118 | GuyHimuro        |  2600.00 |
|         143 | RandallMatos     |  2600.00 |
|         198 | DonaldOConnell   |  2600.00 |
|         199 | DouglasGrant     |  2600.00 |
|         126 | IreneMikkilineni |  2700.00 |
|         139 | JohnSeo          |  2700.00 |
|         117 | SigalTobias      |  2800.00 |
|         130 | MozheAtkinson    |  2800.00 |


mysql> select first_name , hire_date from employees where job_id in ("IT_PROG" , "SA_MAN");

+------------+------------+
| first_name | hire_date  |
+------------+------------+
| Alexander  | 1987-06-20 |
| Bruce      | 1987-06-21 |
| David      | 1987-06-22 |
| Valli      | 1987-06-23 |
| Diana      | 1987-06-24 |
| John       | 1987-08-01 |
| Karen      | 1987-08-02 |
| Alberto    | 1987-08-03 |
| Gerald     | 1987-08-04 |
| Eleni      | 1987-08-05 |
+------------+------------+


mysql> select * from employees where employee_id =150 or employee_id=160;

+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL   | PHONE_NUMBER       | HIRE_DATE  | JOB_ID | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+
|         150 | Peter      | Tucker    | PTUCKER | 011.44.1344.129268 | 1987-08-06 | SA_REP | 10000.00 |           0.30 |        145 |            80 |
|         160 | Louise     | Doran     | LDORAN  | 011.44.1345.629268 | 1987-08-16 | SA_REP |  7500.00 |           0.30 |        146 |            80 |
+-------------+------------+-----------+---------+--------------------+------------+--------+----------+----------------+------------+---------------+


mysql> select first_name , salary , commission_pct , hire_date from employees where salary<10000;

+-------------+---------+----------------+------------+
| first_name  | salary  | commission_pct | hire_date  |
+-------------+---------+----------------+------------+
| Alexander   | 9000.00 |           0.00 | 1987-06-20 |
| Bruce       | 6000.00 |           0.00 | 1987-06-21 |
| David       | 4800.00 |           0.00 | 1987-06-22 |
| Valli       | 4800.00 |           0.00 | 1987-06-23 |
| Diana       | 4200.00 |           0.00 | 1987-06-24 |
| Daniel      | 9000.00 |           0.00 | 1987-06-26 |
| John        | 8200.00 |           0.00 | 1987-06-27 |
| Ismael      | 7700.00 |           0.00 | 1987-06-28 |
| Jose Manuel | 7800.00 |           0.00 | 1987-06-29 |
| Luis        | 6900.00 |           0.00 | 1987-06-30 |
| Alexander   | 3100.00 |           0.00 | 1987-07-02 |
| Shelli      | 2900.00 |           0.00 | 1987-07-03 |
| Sigal       | 2800.00 |           0.00 | 1987-07-04 |
| Guy         | 2600.00 |           0.00 | 1987-07-05 |
| Karen       | 2500.00 |           0.00 | 1987-07-06 |
| Matthew     | 8000.00 |           0.00 | 1987-07-07 |


mysql> select first_name , last_name from employees where first_name like "S%" or last_name like "S%";

+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Sundar     | Ande      |
| Shelli     | Baida     |
| Sarah      | Bell      |
| Shelley    | Higgins   |
| Steven     | King      |
| Sundita    | Kumar     |
| Steven     | Markle    |
| Susan      | Mavris    |
| Samuel     | McCain    |
| Nandita    | Sarchand  |
| Ismael     | Sciarra   |
| John       | Seo       |
| Sarath     | Sewall    |
| Lindsey    | Smith     |
| William    | Smith     |
| Stephen    | Stiles    |
| Martha     | Sullivan  |
| Patrick    | Sully     |
| Sigal      | Tobias    |
| Shanta     | Vollman   |
+------------+-----------+


mysql> select job_id from employees order by job_id desc;

+------------+
| job_id     |
+------------+
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_MAN     |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |
| ST_CLERK   |


mysql> select * from employees where salary>=5000 or salary<=10000;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | 


mysql> select * from employees where (salary>=5000 or salary<=10000 )and department_id=30;
+-------------+------------+------------+----------+--------------+------------+----------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME  | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID   | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+------------+----------+--------------+------------+----------+----------+----------------+------------+---------------+
|         114 | Den        | Raphaely   | DRAPHEAL | 515.127.4561 | 1987-07-01 | PU_MAN   | 11000.00 |           0.00 |        100 |            30 |
|         115 | Alexander  | Khoo       | AKHOO    | 515.127.4562 | 1987-07-02 | PU_CLERK |  3100.00 |           0.00 |        114 |            30 |
|         116 | Shelli     | Baida      | SBAIDA   | 515.127.4563 | 1987-07-03 | PU_CLERK |  2900.00 |           0.00 |        114 |            30 |
|         117 | Sigal      | Tobias     | STOBIAS  | 515.127.4564 | 1987-07-04 | PU_CLERK |  2800.00 |           0.00 |        114 |            30 |
|         118 | Guy        | Himuro     | GHIMURO  | 515.127.4565 | 1987-07-05 | PU_CLERK |  2600.00 |           0.00 |        114 |            30 |
|         119 | Karen      | Colmenares | KCOLMENA | 515.127.4566 | 1987-07-06 | PU_CLERK |  2500.00 |           0.00 |        114 |            30 |
+-------------+------------+------------+----------+--------------+------------+----------+----------+----------------+------------+---------------+


mysql> select * from employees where (salary>=5000 or salary<=10000 )and department_id=30 and commission_pct is null;

Empty set (0.00 sec)


mysql> select first_name , email from employees where department_id=90;

+------------+----------+
| first_name | email    |
+------------+----------+
| Steven     | SKING    |
| Neena      | NKOCHHAR |
| Lex        | LDEHAAN  |
+------------+----------+


mysql> select distinct * from locations;
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
| LOCATION_ID | STREET_ADDRESS            | POSTAL_CODE  | CITY                | STATE_PROVINCE    | COUNTRY_ID |
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
|        1000 | 1297 Via Cola di Rie      | 989          | Roma                |                   | IT         |
|        1100 | 93091 Calle della Testa   | 10934        | Venice              |                   | IT         |
|        1200 | 2017 Shinjuku-ku          | 1689         | Tokyo               | Tokyo Prefecture  | JP         |
|        1300 | 9450 Kamiya-cho           | 6823         | Hiroshima           |                   | JP         |
|        1400 | 2014 Jabberwocky Rd       | 26192        | Southlake           | Texas             | US         |
|        1500 | 2011 Interiors Blvd       | 99236        | South San Francisco | California        | US         |
|        1600 | 2007 Zagora St            | 50090        | South Brunswick     | New Jersey        | US         |
|        1700 | 2004 Charade Rd           | 98199        | Seattle             | Washington        | US         |
|        1800 | 147 Spadina Ave           | M5V 2L7      | Toronto             | Ontario           | CA         |
|        1900 | 6092 Boxwood St           | YSW 9T2      | Whitehorse          | Yukon             | CA         |
|        2000 | 40-5-12 Laogianggen       | 190518       | Beijing             |                   | CN         |
|        2100 | 1298 Vileparle (E)        | 490231       | Bombay              | Maharashtra       | IN         |
|        2200 | 12-98 Victoria Street     | 2901         | Sydney              | New South Wales 


mysql> select distinct country_id from locations;
+------------+
| country_id |
+------------+
| "          |
| AU         |
| BR         |
| CA         |
| CH         |
| CN         |
| DE         |
| IN         |
| IT         |
| JP         |
| NL         |
| Ox         |
| SG         |
| UK         |
| US         |
+------------+


mysql> show tables;
+--------------+
| Tables_in_hr |
+--------------+
| countries    |
| departments  |
| employees    |
| job_history  |
| jobs         |
| locations    |
| regions      |
+--------------+


mysql> select * from countries;
+------------+--------------------------+-----------+
| COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
+------------+--------------------------+-----------+
| AR         | Argentina                |         2 |
| AU         | Australia                |         3 |
| BE         | Belgium                  |         1 |
| BR         | Brazil                   |         2 |
| CA         | Canada                   |         2 |
| CH         | Switzerland              |         1 |
| CN         | China                    |         3 |
| DE         | Germany                  |         1 |
| DK         | Denmark                  |         1 |
| EG         | Egypt                    |         4 |
| FR         | France                   |         1 |
| HK         | HongKong                 |         3 |
| IL         | Israel                   |         4 |
| IN         | India                    |         3 |
| IT         | Italy                    |         1 |
| JP         | Japan                    |         3 |
| KW         | Kuwait                   |         4 |
| MX         | Mexico                   |         2 |
| NG         | Nigeria                  |         4 |
| NL         | Netherlands              |         1 |
| SG         | Singapore                |         3 |
| UK         | United Kingdom           |         1 |
| US         | United States of America |         2 |
| ZM         | Zambia                   |         4 |
| ZW         | Zimbabwe                 |         4 |
+------------+--------------------------+-----------+


mysql> select * from countries order by country_name asc;

+------------+--------------------------+-----------+
| COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
+------------+--------------------------+-----------+
| AR         | Argentina                |         2 |
| AU         | Australia                |         3 |
| BE         | Belgium                  |         1 |
| BR         | Brazil                   |         2 |
| CA         | Canada                   |         2 |
| CN         | China                    |         3 |
| DK         | Denmark                  |         1 |
| EG         | Egypt                    |         4 |
| FR         | France                   |         1 |
| DE         | Germany                  |         1 |
| HK         | HongKong                 |         3 |
| IN         | India                    |         3 |
| IL         | Israel                   |         4 |
| IT         | Italy                    |         1 |
| JP         | Japan                    |         3 |
| KW         | Kuwait                   |         4 |
| MX         | Mexico                   |         2 |
| NL         | Netherlands              |         1 |
| NG         | Nigeria                  |         4 |
| SG         | Singapore                |         3 |
| CH         | Switzerland              |         1 |
| UK         | United Kingdom           |         1 |
| US         | United States of America |         2 |
| ZM         | Zambia                   |         4 |
| ZW         | Zimbabwe                 |         4 |
+------------+--------------------------+-----------+



