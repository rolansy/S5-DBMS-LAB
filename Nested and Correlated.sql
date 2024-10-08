create table PURCHASE(order_no varchar(15) not null primary key, cust_no varchar(15) NOT NULL , prod_no varchar(15) NOT NULL, quantity INT NOT NULL, orderdate date,foreign key(cust_no) references CUSTOMER(cust_no),foreign key(prod_no) references PRODUCT(product_no));

create table CUSTOMER(cust_no varchar(15) not null primary key, name varchar(15) not null,age int not null, city varchar(15) not null, pincode int not null, state varchar(15) not null);

create table PRODUCT(product_no varchar(15) not null primary key, description varchar(15) not null,company varchar(15) not null, price int not null);

create table SUPPLIER(s_no varchar(15) not null primary key, sname varchar(15) not null,age int not null, city varchar(15) not null);

INSERT INTO CUSTOMER VALUES('C00001','Ivan Bayross',35,'Bombay',400054,'Maharashtra') ;

INSERT INTO CUSTOMER VALUES('C00002','Vandana Saitwal',35,'Madras',780001,'Tamil Nadu');

INSERT INTO CUSTOMER VALUES('C00003','Pramada Jaguste',55,'Bombay',400057,'Maharashtra');

INSERT INTO CUSTOMER VALUES('C00004','Basu Navindagi',45,'Bombay',400056,'Maharashtra');

INSERT INTO CUSTOMER VALUES('C00005','Ravi Sreedharan',25,'Delhi',100001,'Delhi');

INSERT INTO CUSTOMER VALUES('C00006','Rukmini',25,'Madras',780001,'Tamil Nadu');

INSERT INTO SUPPLIER VALUES('S001','Ivan Bayross',35,'Bombay');

INSERT INTO SUPPLIER VALUES('S002','Nirmala Agarwal',35,'Madras');

INSERT INTO SUPPLIER VALUES('S003','Susmitha',55,'Bombay');

INSERT INTO SUPPLIER VALUES('S004','Basu Navindagi',45,'Bombay');

INSERT INTO SUPPLIER VALUES('S005','Ravi Sreedharan',25,'Delhi');

INSERT INTO SUPPLIER VALUES('S006','Nanda Gopal',25,'Madras');

INSERT INTO PRODUCT VALUES('P0001','12W FloodLight','Wipro',5000);

INSERT INTO PRODUCT VALUES('P0002','Laptop Adapter','Dell',1560);

INSERT INTO PRODUCT VALUES('P0003','Tablet','HCL',11000);

INSERT INTO PRODUCT VALUES('P0004','Garnet 50W LED','Wipro',999);

INSERT INTO PRODUCT VALUES('P0005','Laptop Charger','HCL',1690);

INSERT INTO PURCHASE VALUES('O00001','C00002','P0003',2,'20-JAN-16');

INSERT INTO PURCHASE VALUES('O00002','C00003','P0002',1,'27-JAN-16');

INSERT INTO PURCHASE VALUES('O00003','C00004','P0002',3,'28-JAN-16');

INSERT INTO PURCHASE VALUES('O00004','C00006','P0001',3,'20-FEB-16');

INSERT INTO PURCHASE VALUES('O00005','C00003','P0005',4,'07-APR-16');

INSERT INTO PURCHASE VALUES('O00006','C00004','P0002',2,'22-MAY-16');

INSERT INTO PURCHASE VALUES('O00007','C00005','P0004',1,'26-MAY-16');

SQL> select * from PRODUCT;

PRODUCT_NO	DESCRIPTION	COMPANY 	     PRICE
--------------- --------------- --------------- ----------
P0001		12W FloodLight	Wipro		      5000
P0002		Laptop Adapter	Dell		      1560
P0003		Tablet		HCL		     11000
P0004		Garnet 50W LED	Wipro		       999
P0005		Laptop Charger	HCL		      1690

SQL> SELECT * FROM PURCHASE;

ORDER_NO	CUST_NO 	PROD_NO 	  QUANTITY ORDERDATE
--------------- --------------- --------------- ---------- ------------------
O00001		C00002		P0003			 2 20-JAN-16
O00002		C00003		P0002			 1 27-JAN-16
O00003		C00004		P0002			 3 28-JAN-16
O00004		C00006		P0001			 3 20-FEB-16
O00005		C00003		P0005			 4 07-APR-16
O00006		C00004		P0002			 2 22-MAY-16
O00007		C00005		P0004			 1 26-MAY-16

7 rows selected.

SQL> SELECT * FROM SUPPLIER;

S_NO		SNAME		       AGE CITY
--------------- --------------- ---------- ---------------
S001		Ivan Bayross		35 Bombay
S002		Nirmala Agarwal 	35 Madras
S003		Susmitha		55 Bombay
S004		Basu Navindagi		45 Bombay
S005		Ravi Sreedharan 	25 Delhi
S006		Nanda Gopal		25 Madras

6 rows selected.

SQL> SELECT * FROM CUSTOMER;

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

C00005		Ravi Sreedharan 	25 Delhi	       100001
Delhi

C00006		Rukmini 		25 Madras	       780001
Tamil Nadu


6 rows selected.

1 SQL> SELECT P.CUST_NO FROM PURCHASE P, PRODUCT R WHERE P.PROD_NO=R.PRODUCT_NO AND R.DESCRIPTION='Laptop Charger' AND P.ORDERDATE LIKE '%JAN%';

no rows selected

2 SQL> SELECT Distinct C.NAME FROM PURCHASE P, CUSTOMER C WHERE P.CUST_NO=C.CUST_NO AND P.PROD_NO='P0002';

NAME
---------------
Pramada Jaguste
Basu Navindagi

3 SQL> SELECT P.CUST_NO FROM PURCHASE P, PRODUCT R WHERE P.PROD_NO=R.PRODUCT_NO and (P.QUANTITY*R.PRICE)>1600;

CUST_NO
---------------
C00002
C00004
C00006
C00003
C00004

4 SQL> SELECT C.NAME FROM CUSTOMER C, PURCHASE P, PRODUCT R WHERE C.CUST_NO=P.CUST_NO AND P.PROD_NO=R.PRODUCT_NO AND (P.QUANTITY*R.PRICE)>1500 AND P.ORDERDATE LIKE '%JAN%';

NAME
---------------
Basu Navindagi
Pramada Jaguste
Vandana Saitwal

5 SQL> SELECT P.CUST_NO FROM PURCHASE P, PRODUCT R WHERE P.PROD_NO=R.PRODUCT_NO and (P.QUANTITY*R.PRICE)<1600;

CUST_NO
---------------
C00003
C00005

6 SQL> SELECT CUST_NO FROM PURCHASE WHERE QUANTITY>(SELECT MAX(QUANTITY) FROM PURCHASE WHERE CUST_NO='C00002');

CUST_NO
---------------
C00004
C00006
C00003

7 SQL> SELECT NAME FROM CUSTOMER WHERE CUST_NO NOT IN (SELECT Distinct CUST_NO FROM PURCHASE );

NAME
---------------
Ivan Bayross

8 SQL> SELECT NAME FROM CUSTOMER WHERE CUST_NO IN (SELECT P.CUST_NO FROM PURCHASE P, PRODUCT R WHERE P.PROD_NO=R.PRODUCT_NO AND R.COMPANY='Wipro');

NAME
---------------
Ravi Sreedharan
Rukmini

> CORRELATED QUERY

1 SQL> SELECT DISTINCT P1.CUST_NO AS CUST_1, P2.CUST_NO AS CUST_2 FROM PURCHASE P1, PURCHASE P2 WHERE (SELECT PRICE FROM PRODUCT WHERE PRODUCT_NO=P2.PROD_NO )>(SELECT PRICE FROM PRODUCT WHERE PRODUCT_NO=P1.PROD_NO ) AND P1.CUST_NO <> P2.CUST_NO;

CUST_1		CUST_2
--------------- ---------------
C00006		C00002
C00004		C00003
C00004		C00002
C00005		C00002
C00005		C00003
C00003		C00006
C00005		C00004
C00005		C00006
C00004		C00006
C00003		C00002

10 rows selected.

2 SQL> SELECT DISTINCT C1.NAME AS CUST_1, C2.NAME AS CUST_2 FROM CUSTOMER C1,CUSTOMER C2,PURCHASE P1, PURCHASE P2 WHERE P1.CUST_NO=C1.CUST_NO AND P2.CUST_NO=C1.CUST_NO AND EXISTS(SELECT 1 FROM PRODUCT R1, PRODUCT R2 WHERE P1.PROD_NO=R1.PRODUCT_NO AND P1.PROD_NO=R2.PRODUCT_NO AND R1.PRICE<1600 AND R2.PRICE<1600)  AND C1.CUST_NO <> C2.CUST_NO;

CUST_1		CUST_2
--------------- ---------------
Ravi Sreedharan Basu Navindagi
Basu Navindagi	Rukmini
Pramada Jaguste Rukmini
Basu Navindagi	Ravi Sreedharan
Ravi Sreedharan Ivan Bayross
Ravi Sreedharan Pramada Jaguste
Pramada Jaguste Ivan Bayross
Basu Navindagi	Ivan Bayross
Basu Navindagi	Vandana Saitwal
Pramada Jaguste Ravi Sreedharan
Basu Navindagi	Pramada Jaguste

CUST_1		CUST_2
--------------- ---------------
Pramada Jaguste Basu Navindagi
Ravi Sreedharan Vandana Saitwal
Pramada Jaguste Vandana Saitwal
Ravi Sreedharan Rukmini

15 rows selected.


6 rows selected.
INCT P1.CUST_NO AS CUST_1, P2.CUST_NO AS CUST_2 FROM PURCHASE P1, PURCHASE P2 WHERE (SELECT PRICE FROM PRODUCT WHERE PRODUCT_NO=P2.PROD_NO )<1600 AND (SELECT PRICE FROM PRODUCT WHERE PRODUCT_NO=P1.PROD_NO )<1600 AND P1.CUST_NO <> P2.CUST_NO;


3 SQL> SELECT DISTINCT PROD_NO FROM PURCHASE P1 WHERE EXISTS(SELECT 1 FROM PURCHASE P2 WHERE P1.PROD_NO=P2.PROD_NO AND P1.CUST_NO<>P2.CUST_NO);

PROD_NO
---------------
P0002

4 SQL> SELECT NAME FROM CUSTOMER C WHERE EXISTS(SELECT 0 FROM PURCHASE P WHERE P.CUST_NO=C.CUST_NO AND P.PROD_NO='P0002');

NAME
---------------
Pramada Jaguste
Basu Navindagi

5 SQL> SELECT c.NAME FROM CUSTOMER C WHERE NOT EXISTS(SELECT 1 FROM PURCHASE P WHERE P.CUST_NO=C.CUST_NO AND P.PROD_NO = 'P0002');

NAME
---------------
Vandana Saitwal
Rukmini
Ravi Sreedharan
Ivan Bayross

6 SQL> SELECT DISTINCT C.NAME FROM CUSTOMER C, PURCHASE P WHERE C.CUST_NO=P.CUST_NO AND P.PROD_NO IN (SELECT PROD_NO FROM PURCHASE WHERE CUST_NO='C00004') AND P.CUST_NO!='C00004';

NAME
---------------
Pramada Jaguste


