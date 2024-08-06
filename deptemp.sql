CREATE TABLE DEPARTMENT( DEP_NO NUMBER(38) NOT NULL PRIMARY KEY, DEP_NAME VARCHAR2(15) NOT NULL, LOC VARCHAR2(15) NOT NULL, MGR NUMBER(38) NOT NULL, EXP_BDG NUMBER(38) NOT NULL, REV_BDG NUMBER (38) NOT NULL); 

CREATE TABLE EMPLOYEE( EMPNO NUMBER(38) NOT NULL PRIMARY KEY, NAME VARCHAR2(15) NOT NULL, JOB VARCHAR2(15) NOT NULL, SALARY NUMBER(38) NOT NULL, COMM VARCHAR2(15),DEP_NO NUMBER(38), SEX VARCHAR2(6), FOREIGN KEY(DEP_NO) REFERENCES DEPARTMENT(DEP_NO) ); 

CREATE TABLE DEPENDANT( PID NUMBER(38) NOT NULL PRIMARY KEY, FNAME VARCHAR2(15) NOT NULL, LNAME VARCHAR2(15) NOT NULL, PLACE VARCHAR2(15),EMPNO NUMBER(38) NOT NULL);


INSERT INTO DEPARTMENT VALUES(60,'Shipping','Trivandrum',215,90000,0);

INSERT INTO DEPARTMENT VALUES(10,'Accounting','Cochin',200,100000,0);

INSERT INTO DEPARTMENT VALUES(30,'Research','Cochin',105,125000,0);

INSERT INTO DEPARTMENT VALUES(40,'Sales','Trichur',109,280000,8000);

INSERT INTO DEPARTMENT VALUES(50,'Manufacturing','Kottayam',210,130000,0);


INSERT INTO EMPLOYEE VALUES (100,'Wilson','CLRK',17000,null,10,'M');

INSERT INTO EMPLOYEE VALUES (101,'Smitha','SLSM',25000,1300,40,'F');

INSERT INTO EMPLOYEE VALUES (103,'Roy','ANLST',35000,null,30,'M');

INSERT INTO EMPLOYEE VALUES (105,'Watson','MNGR',45000,0,30,'M');

INSERT INTO EMPLOYEE VALUES (109,'Alan','MNGR',30000,8000,40,'M');

INSERT INTO EMPLOYEE VALUES (110,'Tina','CLRK',18000,null,50,'F');

INSERT INTO EMPLOYEE VALUES (200,'Karthika','MNGR',29000,null,10,'F');

INSERT INTO EMPLOYEE VALUES (210,'Rita','MNGR',36500,null,50,'F');

INSERT INTO EMPLOYEE VALUES (213,'Manacy','CLRK',16250,null,10,'F');

INSERT INTO EMPLOYEE VALUES (214,'Simpson','DRVR',8250,null,60,'M');

INSERT INTO EMPLOYEE VALUES (215,'Deepa','ANLST',27000,null,60,'F');

INSERT INTO EMPLOYEE VALUES (220,'Soosan','SLSM',28500,5300,60,'F');


INSERT INTO DEPENDANT VALUES(1010,'Anu','Jose','Trivandrum',214);

INSERT INTO DEPENDANT VALUES(1020,'Neenu','Thomas','Kollam',200);

INSERT INTO DEPENDANT VALUES(1022,'Anamika','Thampi','Kollam',200);

INSERT INTO DEPENDANT VALUES(1031,'Swetha','Das','Kottayam',109);


SQL> CREATE TABLE DEPARTMENT( DEP_NO NUMBER(38) NOT NULL PRIMARY KEY, DEP_NAME VACRHAR2(15) NOT NULL, LOC VARCHAR2(15) NOT NULL, MGR NUMBER(38) NOT NULL, EXP_BDG NUMBER(38) NOT NULL, REV_BDG NUMBER (38) NOT NULL); 
CREATE TABLE DEPARTMENT( DEP_NO NUMBER(38) NOT NULL PRIMARY KEY, DEP_NAME VACRHAR2(15) NOT NULL, LOC VARCHAR2(15) NOT NULL, MGR NUMBER(38) NOT NULL, EXP_BDG NUMBER(38) NOT NULL, REV_BDG NUMBER (38) NOT NULL)
                                                                                  *
ERROR at line 1:
ORA-00907: missing right parenthesis


SQL> CREATE TABLE DEPARTMENT( DEP_NO NUMBER(38) NOT NULL PRIMARY KEY, DEP_NAME VARCHAR2(15) NOT NULL, LOC VARCHAR2(15) NOT NULL, MGR NUMBER(38) NOT NULL, EXP_BDG NUMBER(38) NOT NULL, REV_BDG NUMBER (38) NOT NULL); 

Table created.

SQL> CREATE TABLE EMPLOYEE( EMPNO NUMBER(38) NOT NULL PRIMARY KEY, NAME VARCHAR2(15) NOT NULL, JOB VARCHAR2(15) NOT NULL, SALARY NUMBER(38) NOT NULL, COMM VARCHAR2(15),DEP_NO NUMBER(38), SEX VARCHAR2(6), FOREIGN KEY(DEPT_NO) REFERENCES DEPARTMENT(DEP_NO) ); 
CREATE TABLE EMPLOYEE( EMPNO NUMBER(38) NOT NULL PRIMARY KEY, NAME VARCHAR2(15) NOT NULL, JOB VARCHAR2(15) NOT NULL, SALARY NUMBER(38) NOT NULL, COMM VARCHAR2(15),DEP_NO NUMBER(38), SEX VARCHAR2(6), FOREIGN KEY(DEPT_NO) REFERENCES DEPARTMENT(DEP_NO) )
                                                                                                                                                                                                                   *
ERROR at line 1:
ORA-00904: "DEPT_NO": invalid identifier


SQL> CREATE TABLE EMPLOYEE( EMPNO NUMBER(38) NOT NULL PRIMARY KEY, NAME VARCHAR2(15) NOT NULL, JOB VARCHAR2(15) NOT NULL, SALARY NUMBER(38) NOT NULL, COMM VARCHAR2(15),DEP_NO NUMBER(38), SEX VARCHAR2(6), FOREIGN KEY(DEP_NO) REFERENCES DEPARTMENT(DEP_NO) ); 

Table created.

SQL> CREATE TABLE DEPENDANT( PID NUMBER(38) NOT NULL PRIMARY KEY, FNAME VARCHAR2(15) NOT NULL, LNAME VARCHAR2(15) NOT NULL, PLACE VARCHAR2(15),EMPNO NUMBER(38) NOT NULL);

Table created.

SQL> INSERT INTO EMPLOYEE VALUES (100,'Wilson','CLRK',17000,null,10,'M');
INSERT INTO EMPLOYEE VALUES (100,'Wilson','CLRK',17000,null,10,'M')
*
ERROR at line 1:
ORA-02291: integrity constraint (RONAL.SYS_C007067) violated - parent key not
found


SQL> INSERT INTO DEPARTMENT VALUES(60,'Shipping','Trivandrum',215,90000,0);

1 row created.

SQL> INSERT INTO DEPARTMENT VALUES(10,'Accounting','Cochin',200,100000,0);

1 row created.

SQL> INSERT INTO DEPARTMENT VALUES(30,'Research','Cochin',105,125000,0);

1 row created.

SQL> INSERT INTO DEPARTMENT VALUES(30,'Research','Cochin',105,125000,0);
INSERT INTO DEPARTMENT VALUES(30,'Research','Cochin',105,125000,0)
*
ERROR at line 1:
ORA-00001: unique constraint (RONAL.SYS_C007061) violated


SQL> INSERT INTO DEPARTMENT VALUES(40,'Sales','Trichur',109,280000,8000);

1 row created.

SQL> INSERT INTO DEPARTMENT VALUES(50,'Manufacturing','Kottayam',210,130000,0);

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (100,'Wilson','CLRK',17000,null,10,'M');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (101,'Smitha','SLSM',25000,1300,40,'F');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (103,'Roy','ANLST',35000,null,30,'M');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (105,'Watson','MNGR',45000,0,30,'M');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (109,'Alan','MNGR',30000,8000,40,'M');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (110,'Tina','CLRK',18000,null,50,'F');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (200,'Karthika','MNGR',29000,null,10,'F');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (200,'Karthika','MNGR',29000,null,10,'F');
INSERT INTO EMPLOYEE VALUES (200,'Karthika','MNGR',29000,null,10,'F')
*
ERROR at line 1:
ORA-00001: unique constraint (RONAL.SYS_C007066) violated


SQL> INSERT INTO EMPLOYEE VALUES (210,'Rita','MNGR',36500,null,50,'F');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (213,'Manacy','CLRK',16250,null,10,'F');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (214,'Simpson','DRVR',8250,null,60,'M');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (215,'Deepa','ANLST',27000,null,60,'F');

1 row created.

SQL> INSERT INTO EMPLOYEE VALUES (220,'Soosan','SLSM',28500,5300,60,'F');

1 row created.

SQL> INSERT INTO DEPENDANT VALUES(1010,'Anu','Jose','Trivandrum',214);

1 row created.

SQL> INSERT INTO DEPENDANT VALUES(1020,'Neenu','Thomas','Kollam',200);

1 row created.

SQL> INSERT INTO DEPENDANT VALUES(1022,'Anamika','Thampi','Kollam',200);

1 row created.

SQL> INSERT INTO DEPENDANT VALUES(1031,'Swetha','Das','Kottayam',109);

1 row created.



SQL> select * from employee;

     EMPNO NAME 	   JOB		       SALARY COMM		  DEP_NO
---------- --------------- --------------- ---------- --------------- ----------
SEX
------
       100 Wilson	   CLRK 		17000			      10
M

       101 Smitha	   SLSM 		25000 1300		      40
F

       103 Roy		   ANLST		35000			      30
M


     EMPNO NAME 	   JOB		       SALARY COMM		  DEP_NO
---------- --------------- --------------- ---------- --------------- ----------
SEX
------
       105 Watson	   MNGR 		45000 0 		      30
M

       109 Alan 	   MNGR 		30000 8000		      40
M

       110 Tina 	   CLRK 		18000			      50
F


     EMPNO NAME 	   JOB		       SALARY COMM		  DEP_NO
---------- --------------- --------------- ---------- --------------- ----------
SEX
------
       200 Karthika	   MNGR 		29000			      10
F

       210 Rita 	   MNGR 		36500			      50
F

       213 Manacy	   CLRK 		16250			      10
F


     EMPNO NAME 	   JOB		       SALARY COMM		  DEP_NO
---------- --------------- --------------- ---------- --------------- ----------
SEX
------
       214 Simpson	   DRVR 		 8250			      60
M

       215 Deepa	   ANLST		27000			      60
F

       220 Soosan	   SLSM 		28500 5300		      60
F


12 rows selected.

SQL> select * from department;

    DEP_NO DEP_NAME	   LOC			  MGR	 EXP_BDG    REV_BDG
---------- --------------- --------------- ---------- ---------- ----------
	60 Shipping	   Trivandrum		  215	   90000	  0
	10 Accounting	   Cochin		  200	  100000	  0
	30 Research	   Cochin		  105	  125000	  0
	40 Sales	   Trichur		  109	  280000       8000
	50 Manufacturing   Kottayam		  210	  130000	  0

SQL> select * from dependant;

       PID FNAME	   LNAME	   PLACE		EMPNO
---------- --------------- --------------- --------------- ----------
      1010 Anu		   Jose 	   Trivandrum		  214
      1020 Neenu	   Thomas	   Kollam		  200
      1022 Anamika	   Thampi	   Kollam		  200
      1031 Swetha	   Das		   Kottayam		  109


1. SQL> select empno,name from employee where JOB='MNGR' order by name;

     EMPNO NAME
---------- ---------------
       109 Alan
       200 Karthika
       210 Rita
       105 Watson

2. SQL> select empno,name from employee where DEP_NO=40 order by EMPNO;

     EMPNO NAME
---------- ---------------
       101 Smitha
       109 Alan

3. SQL> select empno,name from EMPLOYEE where SEX='F' order by name;

     EMPNO NAME
---------- ---------------
       215 Deepa
       200 Karthika
       213 Manacy
       210 Rita
       101 Smitha
       220 Soosan
       110 Tina

7 rows selected.

4. SQL> select MIN(SALARY), MAX(SALARY), AVG(SALARY), DEP_NO from EMPLOYEE group by DEP_NO;

MIN(SALARY) MAX(SALARY) AVG(SALARY)	DEP_NO
----------- ----------- ----------- ----------
      35000	  45000       40000	    30
      25000	  30000       27500	    40
      18000	  36500       27250	    50
      16250	  29000       20750	    10
       8250	  28500       21250	    60

select max(COMM),min(COMM),sum(COMM), count(*) from employee where comm!=null group by COMM;
SQL> select max(COMM),min(COMM),sum(COMM), count(*) from employee group by COMM;

MAX(COMM)	MIN(COMM)	 SUM(COMM)   COUNT(*)
--------------- --------------- ---------- ----------
						    8
8000		8000		      8000	    1
0		0			 0	    1
5300		5300		      5300	    1
1300		1300		      1300	    1


6. SQL> select count(*) AS Number_Of_Employees,JOB from EMPLOYEE group by JOB;

NUMBER_OF_EMPLOYEES JOB
------------------- ---------------
		  4 MNGR
		  2 SLSM
		  3 CLRK
		  2 ANLST
		  1 DRVR


7. SQL> select sum(SALARY),JOB from EMPLOYEE group by JOB;

SUM(SALARY) JOB
----------- ---------------
     140500 MNGR
      53500 SLSM
      51250 CLRK
      62000 ANLST
       8250 DRVR

8. SQL> select Distinct DEP_NO from employee;

    DEP_NO
----------
	30
	40
	50
	10
	60

9. SQL> SELECT EMPNO,NAME,SALARY FROM EMPLOYEE WHERE SEX='F' AND DEP_NO=10;

     EMPNO NAME 	       SALARY
---------- --------------- ----------
       200 Karthika		29000
       213 Manacy		16250


10. SQL> SELECT EMPNO, NAME, SALARY FROM EMPLOYEE WHERE SEX='M' AND JOB='MNGR' ORDER BY NAME;

     EMPNO NAME 	       SALARY
---------- --------------- ----------
       109 Alan 		30000
       105 Watson		45000



11. SQL> select empno,name,job from employee where SEX='F' AND JOB IN ('SLSM','MNGR');

     EMPNO NAME 	   JOB
---------- --------------- ---------------
       101 Smitha	   SLSM
       200 Karthika	   MNGR
       210 Rita 	   MNGR
       220 Soosan	   SLSM

12. SQL> SELECT EMPNO,NAME FROM EMPLOYEE WHERE DEP_NO=50 AND JOB IN ('MNGR','CLRK');

     EMPNO NAME
---------- ---------------
       110 Tina
       210 Rita

13. SQL> SELECT NAME FROM EMPLOYEE WHERE JOB NOT IN ('CLRK','SLSM');

NAME
---------------
Roy
Watson
Alan
Karthika
Rita
Simpson
Deepa

7 rows selected.

14. SQL> SELECT * FROM EMPLOYEE WHERE JOB='CLRK' AND DEP_NO!=10;

     EMPNO NAME 	   JOB		       SALARY COMM		  DEP_NO
---------- --------------- --------------- ---------- --------------- ----------
SEX
------
       110 Tina 	   CLRK 		18000			      50
F

15. SQL> SELECT NAME FROM EMPLOYEE WHERE NAME LIKE '%u%' AND NAME LIKE '%e%';

no rows selected

16. SQL> SELECT empno, name FROM EMPLOYEE WHERE COMM IS NOT NULL AND COMM > 0;

     EMPNO NAME
---------- ---------------
       101 Smitha
       109 Alan
       220 Soosan

17. SQL> select empno,name ,job from EMPLOYEE where sex='F' and job!='MNGR';

     EMPNO NAME 	   JOB
---------- --------------- ---------------
       101 Smitha	   SLSM
       110 Tina 	   CLRK
       213 Manacy	   CLRK
       215 Deepa	   ANLST
       220 Soosan	   SLSM

18. SQL> SELECT EMPNO, NAME , SALARY FROM EMPLOYEE WHERE SALARY BETWEEN 10000 AND 40000;

     EMPNO NAME 	       SALARY
---------- --------------- ----------
       100 Wilson		17000
       101 Smitha		25000
       103 Roy			35000
       109 Alan 		30000
       110 Tina 		18000
       200 Karthika		29000
       210 Rita 		36500
       213 Manacy		16250
       215 Deepa		27000
       220 Soosan		28500

10 rows selected.

19. SQL> SELECT NAME,EMPNO FROM EMPLOYEE WHERE JOB IN ('MNGR','ANLST') ORDER BY NAME;

NAME		     EMPNO
--------------- ----------
Alan		       109
Deepa		       215
Karthika	       200
Rita		       210
Roy		       103
Watson		       105

6 rows selected.


20. SQL> SELECT EMPNO,NAME,SALARY FROM EMPLOYEE WHERE COMM IS NOT NULL AND SALARY>30000;

no rows selected

21. SQL> SELECT EMPNO,D.DEP_NO,D.DEP_NAME,E.SALARY,E.JOB,E.SEX FROM DEPARTMENT D,EMPLOYEE E WHERE D.DEP_NO=E.DEP_NO ORDER BY D.DEP_NO ,E.EMPNO;

     EMPNO     DEP_NO DEP_NAME		  SALARY JOB		 SEX
---------- ---------- --------------- ---------- --------------- ------
       100	   10 Accounting	   17000 CLRK		 M
       200	   10 Accounting	   29000 MNGR		 F
       213	   10 Accounting	   16250 CLRK		 F
       103	   30 Research		   35000 ANLST		 M
       105	   30 Research		   45000 MNGR		 M
       101	   40 Sales		   25000 SLSM		 F
       109	   40 Sales		   30000 MNGR		 M
       110	   50 Manufacturing	   18000 CLRK		 F
       210	   50 Manufacturing	   36500 MNGR		 F
       214	   60 Shipping		    8250 DRVR		 M
       215	   60 Shipping		   27000 ANLST		 F

     EMPNO     DEP_NO DEP_NAME		  SALARY JOB		 SEX
---------- ---------- --------------- ---------- --------------- ------
       220	   60 Shipping		   28500 SLSM		 F

12 rows selected.

22. SQL> SELECT E.NAME, D.FNAME, D.LNAME, X.LOC FROM EMPLOYEE E, DEPENDANT D, DEPARTMENT X WHERE E.DEP_NO=X.DEP_NO AND E.EMPNO=D.EMPNO AND X.LOC=D.PLACE;

NAME		FNAME		LNAME		LOC
--------------- --------------- --------------- ---------------
Simpson 	Anu		Jose		Trivandrum

23. SQL> SELECT D.LOC FROM DEPARTMENT D, EMPLOYEE E WHERE D.DEP_NO=E.DEP_NO AND E.NAME='Watson';

LOC
---------------
Cochin

24. SQL> SELECT E.NAME,E.EMPNO,D.DEP_NAME FROM EMPLOYEE E, DEPARTMENT D WHERE E.DEP_NO=D.DEP_NO AND D.LOC='Trichur' ORDER BY EMPNO DESC;

NAME		     EMPNO DEP_NAME
--------------- ---------- ---------------
Alan		       109 Sales
Smitha		       101 Sales

25. SQL> SELECT NAME,SALARY FROM EMPLOYEE WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE);

NAME		    SALARY
--------------- ----------
Roy		     35000
Watson		     45000
Alan		     30000
Karthika	     29000
Rita		     36500
Deepa		     27000
Soosan		     28500

7 rows selected.


26. SQL> SELECT E.NAME,E.JOB,D.DEP_NAME,D.LOC FROM EMPLOYEE E, DEPARTMENT D WHERE E.DEP_NO=D.DEP_NO AND E.SEX='F' ORDER BY E.NAME;

NAME		JOB		DEP_NAME	LOC
--------------- --------------- --------------- ---------------
Deepa		ANLST		Shipping	Trivandrum
Karthika	MNGR		Accounting	Cochin
Manacy		CLRK		Accounting	Cochin
Rita		MNGR		Manufacturing	Kottayam
Smitha		SLSM		Sales		Trichur
Soosan		SLSM		Shipping	Trivandrum
Tina		CLRK		Manufacturing	Kottayam

7 rows selected.

27. SQL> SELECT E.NAME, D.DEP_NAME FROM EMPLOYEE E, DEPARTMENT D WHERE E.DEP_NO=D.DEP_NO AND E.JOB='MNGR' ORDER BY D.DEP_NAME;

NAME		DEP_NAME
--------------- ---------------
Karthika	Accounting
Rita		Manufacturing
Watson		Research
Alan		Sales

28. SQL> SELECT E.NAME,D.DEP_NAME FROM EMPLOYEE E,DEPARTMENT D WHERE E.DEP_NO=D.DEP_NO AND SALARY=(SELECT MAX(SALARY) FROM EMPLOYEE);

NAME		DEP_NAME
--------------- ---------------
Watson		Research

29. SQL> SELECT E.NAME,D.DEP_NAME,E.COMM FROM EMPLOYEE E, DEPARTMENT D WHERE E.DEP_NO=D.DEP_NO AND E.COMM IS NOT NULL ORDER BY E.NAME;

NAME		DEP_NAME	COMM
--------------- --------------- ---------------
Alan		Sales		8000
Smitha		Sales		1300
Soosan		Shipping	5300



30. SQL> SELECT E.NAME, D.DEP_NAME FROM EMPLOYEE E ,DEPARTMENT D WHERE E.DEP_NO = D.DEP_NO AND D.DEP_NO= ( SELECT DEP_NO FROM EMPLOYEE GROUP BY DEP_NO HAVING COUNT(*) > 3 ) ORDER BY D.DEP_NAME, E.NAME;

no rows selected

31. SQL> SELECT E.NAME,D.DEP_NAME,E.COMM FROM EMPLOYEE E, DEPARTMENT D WHERE E.DEP_NO=D.DEP_NO AND E.COMM IS NULL ORDER BY E.NAME;

NAME		DEP_NAME	COMM
--------------- --------------- ---------------
Deepa		Shipping
Karthika	Accounting
Manacy		Accounting
Rita		Manufacturing
Roy		Research
Simpson 	Shipping
Tina		Manufacturing
Watson		Research
Wilson		Accounting

9 rows selected.

32. SQL> SELECT NAME,SALARY,DEP_NO FROM EMPLOYEE WHERE DEP_NO IN (10,30);

NAME		    SALARY     DEP_NO
--------------- ---------- ----------
Wilson		     17000	   10
Roy		     35000	   30
Watson		     45000	   30
Karthika	     29000	   10
Manacy		     16250	   10

33. SQL> SELECT JOB FROM EMPLOYEE WHERE DEP_NO=30 AND DEP_NO!=40;

JOB
---------------
ANLST
MNGR

34. SELECT JOB,SALARY FROM EMPLOYEE WHERE DEP_NO IN (10,40) GROUP BY SALARY;

no rows selected

35. SQL> CREATE VIEW MANAGER AS (SELECT EMPNO,NAME,JOB FROM EMPLOYEE WHERE JOB='MNGR');

View created.

SQL> SELECT * FROM MANAGER;

     EMPNO NAME 	   JOB
---------- --------------- ---------------
       105 Watson	   MNGR
       109 Alan 	   MNGR
       200 Karthika	   MNGR
       210 Rita 	   MNGR

36. SQL> SELECT EMPNO,NAME,JOB,SALARY FROM EMPLOYEE WHERE JOB='CLRK' AND SALARY>1650;

     EMPNO NAME 	   JOB		       SALARY
---------- --------------- --------------- ----------
       100 Wilson	   CLRK 		17000
       110 Tina 	   CLRK 		18000
       213 Manacy	   CLRK 		16250

37. SQL> CREATE INDEX idx_dependant_fname_lname ON DEPENDANT(FNAME, LNAME);

Index created.

38. SQL> DELETE FROM DEPENDANT WHERE PID= 1031;

1 row deleted.

39. SQL> SELECT EMPNO, NAME FROM EMPLOYEE WHERE DEP_NO = 10 AND SEX = 'F';

     EMPNO NAME
---------- ---------------
       213 Manacy

40. DELETE FROM DEPENDANT WHERE EMPNO = (SELECT EMPNO FROM EMPLOYEE WHERE NAME = 'Karthika' AND JOB = 'MNGR');

2 rows deleted.

DELETE FROM EMPLOYEE WHERE NAME = 'Karthika' AND JOB = 'MNGR';

1 row deleted.
