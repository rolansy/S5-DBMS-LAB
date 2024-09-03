SET SERVEROUTPUT ON;

DECLARE
    CURSOR honor_students_cursor IS
        SELECT rollno, name, s1, s2
        FROM std_honors
        WHERE (s1 + s2) > 12
        ORDER BY rollno;

    roll std_honors.rollno%TYPE;
    sname std_honors.name%TYPE;
    s1m std_honors.s1%TYPE;
    s2m std_honors.s2%TYPE;
    tot NUMBER;
    maxs NUMBER := 0;

BEGIN
    OPEN honor_students_cursor;
    DBMS_OUTPUT.PUT_LINE('Students ELigible for honors : ');
    LOOP
        FETCH honor_students_cursor INTO roll, sname, s1m, s2m;
        
        EXIT WHEN honor_students_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Roll No: ' || roll || ', Name: ' || sname || ', S1: ' || s1m || ', S2: ' || s2m);
        tot:=s1m+s2m;
        DBMS_OUTPUT.PUT_LINE('Total Marks : '|| tot);

        IF s1m > maxs THEN
            maxs := s1m;
        END IF;

    END LOOP;

    CLOSE honor_students_cursor;
    DBMS_OUTPUT.PUT_LINE('.');
    DBMS_OUTPUT.PUT_LINE('Highest grade obtained in the previous semester for honor students: ' || maxs);
END;
/