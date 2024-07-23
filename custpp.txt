create table PURCHASE(order_no varchar(15) not null primary key, cust_no varchar(15) NOT NULL , prod_no varchar(15) NOT NULL, quantity INT NOT NULL, orderdate date,foreign key(cust_no) references CUSTOMER(cust_no),foreign key(prod_no) references PRODUCT(product_no));

create table CUSTOMER(cust_no varchar(15) not null primary key, name varchar(15) not null,age int not null, city varchar(15) not null, pincode int not null, state varchar(15) not null);

create table PRODUCT(product_no varchar(15) not null primary key, description varchar(15) not null,company varchar(15) not null, price int not null);

create table SUPPLIER(s_no varchar(15) not null primary key, sname varchar(15) not null,age int not null, city varchar(15) not null);

INSERT INTO CUSTOMER VALUES ('C00001','Ivan Bayross',35,'Bombay',400054,'Maharashtra') , ('C00002','Vandana Saitwal',35,'Madras',780001,'Tamil Nadu') , ('C00003','Pramada Jaguste',55,'Bombay',400057,'Maharashtra') , ('C00004','Basu Navindagi',45,'Bombay',400056,'Maharashtra') , ('C00005','Ravi Sreedharan',25,'Delhi',10001,'Delhi') , ('C00006','Rukmini',25,'Madras',780001,'Tamil Nadu');

INSERT INTO CUSTOMER VALUES('C00001','Ivan Bayross',35,'Bombay',400054,'Maharashtra') ;

INSERT INTO CUSTOMER VALUES('C00002','Vandana Saitwal',35,'Madras',780001,'Tamil Nadu');

INSERT INTO CUSTOMER VALUES('C00003','Pramada Jaguste',55,'Bombay',400057,'Maharashtra');

INSERT INTO CUSTOMER VALUES('C00004','Basu Navindagi',45,'Bombay',400056,'Maharashtra');

INSERT INTO CUSTOMER VALUES('C00005','Ravi Sreedharan',25,'Delhi',100001,'Delhi');

INSERT INTO CUSTOMER VALUES('C00006','Rukmini',25,'Madras',780001,'Tamil Nadu');

select * from customer;

CUST_NO 	NAME		       AGE CITY 	      PINCODE
--------------- --------------- ---------- --------------- ----------
STATE
---------------
C00001		Ivan Bayross		35 Bombay	       400054
Maharashtra

C00002		Vandana Saitwal 	35 Madras	       780001
Tamil Nadu

C00003		Pramada Jaguste 	55 Bombay	       400057
Maharashtra


CUST_NO 	NAME		       AGE CITY 	      PINCODE
--------------- --------------- ---------- --------------- ----------
STATE
---------------
C00004		Basu Navindagi		45 Bombay	       400056
Maharashtra

C00005		Ravi Sreedharan 	25 Delhi		10001
Delhi

C00006		Rukmini 		25 Madras	       780001
Tamil Nadu


6 rows selected.


INSERT INTO SUPPLIER VALUES('S001','Ivan Bayross',35,'Bombay');

INSERT INTO SUPPLIER VALUES('S002','Nirmala Agarwal',35,'Madras');

INSERT INTO SUPPLIER VALUES('S003','Susmitha',55,'Bombay');

INSERT INTO SUPPLIER VALUES('S004','Basu Navindagi',45,'Bombay');

INSERT INTO SUPPLIER VALUES('S005','Ravi Sreedharan',25,'Delhi');

INSERT INTO SUPPLIER VALUES('S006','Nanda Gopal',25,'Madras');

select * from supplier;

S_NO		SNAME		       AGE CITY
--------------- --------------- ---------- ---------------
S001		Ivan Bayross		35 Bombay
S002		Nirmala Agarwal 	35 Madras
S003		Susmitha		55 Bombay
S004		Basu Navindagi		45 Bombay
S005		Ravi Sreedharan 	25 Delhi
S006		Nanda Gopal		25 Madras

6 rows selected.


INSERT INTO PRODUCT VALUES('P0001','12W FloodLight','Wipro',5000);

INSERT INTO PRODUCT VALUES('P0002','Laptop Adapter','Dell',1560);

INSERT INTO PRODUCT VALUES('P0003','Tablet','HCL',11000);

INSERT INTO PRODUCT VALUES('P0004','Garnet 50W LED','Wipro',999);

INSERT INTO PRODUCT VALUES('P0005','Laptop Charger','HCL',1690);

SELECT * FROM PRODUCT;

PRODUCT_NO	DESCRIPTION	COMPANY 	     PRICE
--------------- --------------- --------------- ----------
P0001		12W FloodLight	Wipro		      5000
P0002		Laptop Adapter	Dell		      1560
P0003		Tablet		HCL		     11000
P0004		Garnet 50W LED	Wipro		       999
P0005		Laptop Charger	HCL		      1690


INSERT INTO PURCHASE VALUES('O00001','C00002','P0003',2,'20-JAN-16');

INSERT INTO PURCHASE VALUES('O00002','C00003','P0002',1,'27-JAN-16');

INSERT INTO PURCHASE VALUES('O00003','C00006','P0001',3,'20-FEB-16');

INSERT INTO PURCHASE VALUES('O00004','C00003','P0005',4,'07-APR-16');

INSERT INTO PURCHASE VALUES('O00005','C00004','P0002',2,'22-MAY-16');

INSERT INTO PURCHASE VALUES('O00006','C00005','P0004',1,'26-MAY-16');

SELECT * FROM PURCHASE;

ORDER_NO	CUST_NO 	PROD_NO 	  QUANTITY ORDERDATE
--------------- --------------- --------------- ---------- ------------------
O00001		C00002		P0003			 2 20-JAN-16
O00002		C00003		P0002			 1 27-JAN-16
O00003		C00006		P0001			 3 20-FEB-16
O00004		C00003		P0005			 4 07-APR-16
O00005		C00004		P0002			 2 22-MAY-16
O00006		C00005		P0004			 1 26-MAY-16

6 rows selected.


1. SQL> Select Name from CUSTOMER where city='Madras';

NAME
---------------
Vandana Saitwal
Rukmini

2. SQL> select cust_no from PURCHASE where orderdate LIKE '___JAN___';

CUST_NO
---------------
C00002
C00003

3. SQL> select company from PRODUCT where price > 5000;

COMPANY
---------------
HCL

4. SQL>  select name from customer where name not like 'R%';

NAME
---------------
Ivan Bayross
Vandana Saitwal
Pramada Jaguste
Basu Navindagi

5. SQL> ALTER TABLE CUSTOMER ADD email VARCHAR(20);

6. select name,age from CUSTOMER where STATE='Maharashtra' and age>40;

NAME		       AGE
--------------- ----------
Pramada Jaguste 	55
Basu Navindagi		45

7. select company,price from PRODUCT order by price ;

COMPANY 	     PRICE
--------------- ----------
Wipro		       999
Dell		      1560
HCL		      1690
Wipro		      5000
HCL		     11000

8. select avg(age) from customer;

  AVG(AGE)
----------e table 
36.6666667

9. select city,state from customer where STATE in ('Maharashtra','Tamil Nadu');


CITY		STATE
--------------- ---------------
Bombay		Maharashtra
Madras		Tamil Nadu
Bombay		Maharashtra
Bombay		Maharashtra
Madras		Tamil Nadu

10. select avg(price) from PRODUCT;

AVG(PRICE)
----------
    4049.8


11. select cust_no,quantity from PURCHASE order by quantity;

CUST_NO 	  QUANTITY
--------------- ----------
C00003			 1
C00005			 1
C00002			 2
C00004			 2
C00006			 3
C00003			 4

12. update PURCHASE set prod_no='P0008' where cust_no='C00003';

2 rows updated.


13. select count(*) from customer where city='Delhi';

  COUNT(*)
----------
	 1

14. select cust_no from PURCHASE where QUANTITY>3;

CUST_NO
---------------
C00003

15. ALTER TABLE PURCHASE MODIFY orderdate VARCHAR(10);

Table altered.

16. select min(price),max(price) from PRODUCT;

MIN(PRICE) MAX(PRICE)
---------- ----------
       999	11000


17. select company,count(*) from PRODUCT where company in ('Wipro','HCL') group by company;

COMPANY 	  COUNT(*)
--------------- ----------
Wipro			 2
HCL			 2

18. select name from customer order by name;

NAME
---------------
Basu Navindagi
Ivan Bayross
Pramada Jaguste
Ravi Sreedharan
Rukmini
Vandana Saitwal

19. select * from PURCHASE order by orderdate desc;

ORDER_NO	CUST_NO 	PROD_NO 	  QUANTITY ORDERDATE
--------------- --------------- --------------- ---------- ------------------
O00006		C00005		P0004			 1 26-MAY-16
O00005		C00004		P0002			 2 22-MAY-16
O00004		C00003		P0005			 4 07-APR-16
O00003		C00006		P0001			 3 20-FEB-16
O00002		C00003		P0002			 1 27-JAN-16
O00001		C00002		P0003			 2 20-JAN-16

20. DELETE FROM PRODUCT WHERE product_no = 'P0003';

1 row deleted.

21. CREATE TABLE PURCHASE_SUMMARY AS SELECT order_no, orderdate FROM PURCHASE;

Table created.

ORDER_NO	ORDERDATE
--------------- ------------------
O00001		20-JAN-16
O00002		27-JAN-16
O00003		20-FEB-16
O00004		07-APR-16
O00005		22-MAY-16
O00006		26-MAY-16

22. drop table PURCHASE_SUMMARY;

Table dropped.

23. CREATE VIEW customer_view AS SELECT * FROM customer;

View created.

SQL> select * from customer_view;

CUST_NO 	NAME		       AGE CITY 	      PINCODE
--------------- --------------- ---------- --------------- ----------
STATE		EMAIL
--------------- --------------------
C00001		Ivan Bayross		35 Bombay	       400054
Maharashtra

C00002		Vandana Saitwal 	35 Madras	       780001
Tamil Nadu

C00003		Pramada Jaguste 	55 Bombay	       400057
Maharashtra


CUST_NO 	NAME		       AGE CITY 	      PINCODE
--------------- --------------- ---------- --------------- ----------
STATE		EMAIL
--------------- --------------------
C00004		Basu Navindagi		45 Bombay	       400056
Maharashtra

C00005		Ravi Sreedharan 	25 Delhi		10001
Delhi

C00006		Rukmini 		25 Madras	       780001
Tamil Nadu


6 rows selected.


24. select P.cust_no,count(P.cust_no),C.Name from PURCHASE P, CUSTOMER C where P.cust_no=C.cust_no group by P.cust_no,C.NAME HAVING COUNT(P.cust_no)>1;

CUST_NO 	COUNT(P.CUST_NO) NAME
--------------- ---------------- ---------------
C00003			       2 Pramada Jaguste


25. select C.CITY,P.ORDER_NO,P.CUST_NO FROM PURCHASE P JOIN CUSTOMER C ON P.CUST_NO=C.CUST_NO order BY C.CITY;

CITY		ORDER_NO	CUST_NO
--------------- --------------- ---------------
Bombay		O00002		C00003
Bombay		O00005		C00004
Bombay		O00004		C00003
Delhi		O00006		C00005
Madras		O00003		C00006
Madras		O00001		C00002

26. SELECT NAME FROM CUSTOMER WHERE NAME LIKE 'R%';

NAME
---------------
Ravi Sreedharan
Rukmini

27. SELECT NAME FROM CUSTOMER UNION SELECT SNAME FROM SUPPLIER;

NAME
---------------
Basu Navindagi
Ivan Bayross
Nanda Gopal
Nirmala Agarwal
Pramada Jaguste
Ravi Sreedharan
Rukmini
Susmitha
Vandana Saitwal



