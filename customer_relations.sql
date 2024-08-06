Create Table CRELATION (CUST_ID INT NOT NULL PRIMARY KEY, CUST_NAME VARCHAR(15) NOT NULL,CITY VARCHAR(15),AMOUNT INT,DISCOUNT INT,SALESMAN_ID VARCHAR(15));

INSERT INTO CRELATION VALUES(100,'Deepa','Trivandrum',1050,2,'K0010');

INSERT INTO CRELATION VALUES(101,'Don','Trivandrum',8040,5,'K0010');

INSERT INTO CRELATION VALUES(102,'Manacy','Kollam',20030,6,'A200tmp');

INSERT INTO CRELATION VALUES(103,'Karthika','Ernakulam',8400,20,'EkmX1050');

INSERT INTO CRELATION VALUES(104,'Tulasi','Ernakulam',2500,2,'EkmY2342');

INSERT INTO CRELATION VALUES(105,'Roy','Trivandrum',2900,4,'L1045');

INSERT INTO CRELATION VALUES(106,'Vivek','Trivandrum',3200,8,'L1045');

INSERT INTO CRELATION VALUES(108,'Bhasi','Kottayam',12860,10,'KtmP1028');

INSERT INTO CRELATION VALUES(109,'Anurag','Kottayam',3860,12,'KtmB158tmp');

INSERT INTO CRELATION VALUES(110,'antony','Kottayam',9800,8,'KtmP1028');

INSERT INTO CRELATION VALUES(111,'Meerah','Trichur',6700,6,'R3085');


SQL> INSERT INTO CRELATION VALUES(100,'Deepa','Trivandrum',1050,2,'K0010');

1 row created.

SQL> INSERT INTO CRELATION VALUES(101,'Don','Trivandrum',8040,5,'K0010');

1 row created.

SQL> INSERT INTO CRELATION VALUES(102,'Manacy','Kollam',20030,6,'A200tmp');

1 row created.

SQL> INSERT INTO CRELATION VALUES(103,'Karthika','Ernakulam',8400,20,'EkmX1050');

1 row created.

SQL> INSERT INTO CRELATION VALUES(104,'Tulasi','Ernakulam',2500,2,'EkmY2342');

1 row created.

SQL> INSERT INTO CRELATION VALUES(105,'Roy','Trivandrum',2900,4,'L1045');

1 row created.

SQL> INSERT INTO CRELATION VALUES(106,'Vivek','Trivandrum',3200,8,'L1045');

1 row created.

SQL> INSERT INTO CRELATION VALUES(108,'Bhasi','Kottayam',12860,10,'KtmP1028');

1 row created.

SQL> INSERT INTO CRELATION VALUES(109,'Anurag','Kottayam',3860,12,'KtmB158tmp');

1 row created.

SQL>  INSERT INTO CRELATION VALUES(110,'antony','Kottayam',9800,8,'KtmP1028');

1 row created.

SQL> INSERT INTO CRELATION VALUES(111,'Meerah','Trichur',6700,6,'R3085');

1 row created.

SQL> Select * from crelation;

   CUST_ID CUST_NAME	   CITY 	       AMOUNT	DISCOUNT SALESMAN_ID
---------- --------------- --------------- ---------- ---------- ---------------
       100 Deepa	   Trivandrum		 1050	       2 K0010
       101 Don		   Trivandrum		 8040	       5 K0010
       102 Manacy	   Kollam		20030	       6 A200tmp
       103 Karthika	   Ernakulam		 8400	      20 EkmX1050
       104 Tulasi	   Ernakulam		 2500	       2 EkmY2342
       105 Roy		   Trivandrum		 2900	       4 L1045
       106 Vivek	   Trivandrum		 3200	       8 L1045
       108 Bhasi	   Kottayam		12860	      10 KtmP1028
       109 Anurag	   Kottayam		 3860	      12 KtmB158tmp
       110 antony	   Kottayam		 9800	       8 KtmP1028
       111 Meerah	   Trichur		 6700	       6 R3085

11 rows selected.


1 SQL> SELECT CUST_NAME FROM CRELATION WHERE CUST_NAME LIKE 'a%';

CUST_NAME
---------------
antony

2. SQL> SELECT CUST_NAME FROM CRELATION WHERE CUST_NAME LIKE 'a%' OR CUST_NAME LIKE 'A%';

CUST_NAME
---------------
Anurag
antony

3. SQL> UPDATE CRELATION SET CUST_NAME = INITCAP(CUST_NAME);

11 rows updated.

SQL> SELECT CUST_NAME FROM crelation;

CUST_NAME
---------------
Deepa
Don
Manacy
Karthika
Tulasi
Roy
Vivek
Bhasi
Anurag
Antony
Meerah

11 rows selected.

4. SQL> select CITY from crelation where city like 'a';

no rows selected

5. SQL> SELECT SUBSTR(SALESMAN_ID, 1, 3) FROM CRELATION;

SUBSTR(SALES
------------
K00
K00
A20
Ekm
Ekm
L10
L10
Ktm
Ktm
Ktm
R30

11 rows selected.

6. SQL> SELECT SALESMAN_ID FROM CRELATION WHERE SALESMAN_ID LIKE '%tmp%';

SALESMAN_ID
---------------
A200tmp
KtmB158tmp

7. SQL> select city,count(*) from crelation where city like 'T%' group by city;

CITY		  COUNT(*)
--------------- ----------
Trivandrum		 4
Trichur 		 1

8. SQL> SELECT CUST_NAME FROM CRELATION WHERE CUST_NAME LIKE 'D%' AND LENGTH(CUST_NAME) >= 4;

CUST_NAME
---------------
Deepa

9. SQL> select city from crelation where city like 'K%' and LENGTH(city)>=2;

CITY
---------------
Kollam
Kottayam
Kottayam
Kottayam

10. SQL> select city from crelation where city like 'K%' and LENGTH(city)>=7;

CITY
---------------
Kottayam
Kottayam
Kottayam

11. SQL> select city FROM crelation where city like 'K%m';

CITY
---------------
Kollam
Kottayam
Kottayam
Kottayam

12. SQL> SELECT SALESMAN_ID, SUM(DISCOUNT) AS TOTAL_DISCOUNT, (sum(DISCOUNT) / sum(AMOUNT)) * 100 || '%' AS DISCOUNT_PERCENTAGE FROM crelation GROUP BY SALESMAN_ID;

SALESMAN_ID	TOTAL_DISCOUNT DISCOUNT_PERCENTAGE
--------------- -------------- -----------------------------------------
X1050			    20 .238095238095238095238095238095238095238%
A200tmp 		     6 .029955067398901647528706939590614078882%
Y2342			     2 .08%
KtmB158tmp		    12 .310880829015544041450777202072538860104%
R3085			     6 .089552238805970149253731343283582089552%
KtmP1028		    18 .079435127978817299205648720211827007944%
K0010			     7 .077007700770077007700770077007700770077%
L1045			    12 .196721311475409836065573770491803278689%

8 rows selected.

13. SQL> SELECT UPPER(city) AS CITY FROM crelation ;

CITY
---------------
TRIVANDRUM
TRIVANDRUM
KOLLAM
ERNAKULAM
ERNAKULAM
TRIVANDRUM
TRIVANDRUM
KOTTAYAM
KOTTAYAM
KOTTAYAM
TRICHUR

11 rows selected.

14. SQL> UPDATE crelation SET SALESMAN_ID = SUBSTR(SALESMAN_ID, 4) WHERE CITY = 'Ernakulam' AND SALESMAN_ID LIKE 'Ekm%';

2 rows updated.

15. SQL> SELECT SALESMAN_ID, SUM(AMOUNT) AS TOTAL_SALES, TO_CHAR(SYSDATE, 'DD-MM-YY') as TODAY FROM crelation GROUP BY SALESMAN_ID;

SALESMAN_ID	TOTAL_SALES TODAY
--------------- ----------- --------
X1050		       8400 06-08-24
A200tmp 	      20030 06-08-24
Y2342		       2500 06-08-24
KtmB158tmp	       3860 06-08-24
R3085		       6700 06-08-24
KtmP1028	      22660 06-08-24
K0010		       9090 06-08-24
L1045		       6100 06-08-24

8 rows selected.

