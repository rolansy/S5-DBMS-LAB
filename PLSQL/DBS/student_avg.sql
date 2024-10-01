CREATE TABLE student_avg (    std INTEGER,    name VARCHAR(10),    subj1 INTEGER,    subj2 INTEGER,    subj3 INTEGER,    Total INTEGER,    Avg FLOAT);

INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (52, 'CHarlie', 6,7,8);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (53, 'David', 9, 4, 5);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (51, 'Alice', 5, 2, 3);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (54, 'Eve', 8, 5, 9);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (55, 'Frank', 5, 6, 7);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (56, 'Grace', 7, 8, 9);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (57, 'Hannah', 8, 9, 10);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (58, 'Ivy', 3, 4, 5);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (59, 'Jack', 6, 7, 8);
INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (510, 'Katie', 7, 8, 9);

select * from student_avg;

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (53, 'David', 9, 4, 5);

1 row created.

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (51, 'Alice', 5, 2, 3);

1 row created.

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (54, 'Eve', 8, 5, 9);

1 row created.

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (55, 'Frank', 5, 6, 7);

1 row created.

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (56, 'Grace', 7, 8, 9);

1 row created.

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (57, 'Hannah', 8, 9, 10);

1 row created.

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (58, 'Ivy', 3, 4, 5);

1 row created.

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (59, 'Jack', 6, 7, 8);

1 row created.

SQL> INSERT INTO student_avg(std,name,subj1,subj2,subj3) VALUES (510, 'Katie', 7, 8, 9);

1 row created.


SQL> select * from student_avg;

       STD NAME            SUBJ1      SUBJ2      SUBJ3      TOTAL        AVG
---------- ---------- ---------- ---------- ---------- ---------- ----------
        52 CHarlie             6          7          8         21          7
        53 David               9          4          5         18          6
        51 Alice               5          2          3         10 3.33333333
        54 Eve                 8          5          9         22 7.33333333
        55 Frank               5          6          7         18          6
        56 Grace               7          8          9         24          8
        57 Hannah              8          9         10         27          9
        58 Ivy                 3          4          5         12          4
        59 Jack                6          7          8         21          7
       510 Katie               7          8          9         24          8

10 rows selected.