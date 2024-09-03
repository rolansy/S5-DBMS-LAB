SET SERVEROUTPUT ON;

DECLARE
    CURSOR honor_students_cursor IS
        SELECT rollno, name, s1, s2
        FROM std_honors
        WHERE (s1 + s2) > 12
        ORDER BY rollno;

    v_rollno std_honors.rollno%TYPE;
    v_name std_honors.name%TYPE;
    v_s1 std_honors.s1%TYPE;
    v_s2 std_honors.s2%TYPE;
    v_highest_grade NUMBER := 0;

BEGIN
    OPEN honor_students_cursor;
    DBMS_OUTPUT.PUT_LINE('Students ELigible for honors : ');
    LOOP
        FETCH honor_students_cursor INTO v_rollno, v_name, v_s1, v_s2;
        
        EXIT WHEN honor_students_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Roll No: ' || v_rollno || ', Name: ' || v_name || ', S1: ' || v_s1 || ', S2: ' || v_s2);
        IF v_s1 > v_highest_grade THEN
            v_highest_grade := v_s1;
        END IF;

    END LOOP;

    CLOSE honor_students_cursor;

    DBMS_OUTPUT.PUT_LINE('Highest grade obtained in the previous semester for honor students: ' || v_highest_grade);
END;
/