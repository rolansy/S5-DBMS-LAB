CREATE TABLE std_honors (
    rollno NUMBER PRIMARY KEY,
    name VARCHAR(30),
    s1 NUMBER,
    s2 NUMBER
);

INSERT INTO std_honors VALUES (52, 'Bob', 8,8);
INSERT INTO std_honors VALUES (53, 'Charlie', 9, 4);
INSERT INTO std_honors VALUES (51, 'Alice', 5, 2);
INSERT INTO std_honors VALUES (54, 'David', 65, 70);
INSERT INTO std_honors VALUES (55, 'Eve', 80, 85);
INSERT INTO std_honors VALUES (56, 'Frank', 55, 60);
INSERT INTO std_honors VALUES (57, 'Grace', 7, 8);
INSERT INTO std_honors VALUES (58, 'Hannah', 88, 90);
INSERT INTO std_honors VALUES (59, 'Ivy', 32, 94);
INSERT INTO std_honors VALUES (510, 'Jack', 70, 5);

SQL> select * from std_honors;

    ROLLNO NAME 				  S1	     S2
---------- ------------------------------ ---------- ----------
	52 Bob					   8	      8
	53 Charlie				   9	      4
	51 Alice				   5	      2
	54 David				  65	     70
	55 Eve					  80	     85
	56 Frank				  55	     60
	57 Grace				   7	      8
	58 Hannah				  88	     90
	59 Ivy					  32	     94
       510 Jack 				  70	      5

10 rows selected.


