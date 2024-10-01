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