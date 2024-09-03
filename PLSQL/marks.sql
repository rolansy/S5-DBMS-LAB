SET SERVEROUTPUT ON 

DECLARE 
    avg_marks NUMBER(10);
    cdate DATE;
    cweek varchar2(10); 

BEGIN
    SELECT AVG(MARKS) INTO avg_marks FROM STUDENTS;
    DBMS_OUTPUT.PUT_LINE('Average Marks : '||avg_marks);
    if avg_marks<40 then
        dbms_output.put_line('Warning! Low Average Marks Need Improvement! ');
    else
        dbms_output.put_line('Good Average Marks! ');
    END if;
    cdate := SYSDATE;
    DBMS_OUTPUT.PUT_LINE('Current Date : '||cdate);
    cweek := TO_CHAR(cdate,'DAY');  
    DBMS_OUTPUT.PUT_LINE('Current Day : '||cweek);
END;
/