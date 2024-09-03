SET SERVEROUTPUT ON;


DECLARE
    CURSOR user_cursor IS
        SELECT user_id, user_name, unit_consumed
        FROM electricity_user;
    
    user_record user_cursor%ROWTYPE;
    charge_rate NUMBER(10, 2);
    total_bill NUMBER(10, 2);

BEGIN
    OPEN user_cursor;
    LOOP
        FETCH user_cursor INTO user_record;
        EXIT WHEN user_cursor%NOTFOUND;

        SELECT charge INTO charge_rate
        FROM electricity_charge
        WHERE 
            (user_record.unit_consumed BETWEEN 1 AND 100 AND unit_consumed = '1-100') OR
            (user_record.unit_consumed BETWEEN 101 AND 300 AND unit_consumed = '101-300') OR
            (user_record.unit_consumed BETWEEN 301 AND 500 AND unit_consumed = '301-500') OR
            (user_record.unit_consumed > 500 AND unit_consumed = '>500');

        total_bill := user_record.unit_consumed * charge_rate;

        DBMS_OUTPUT.PUT_LINE('User ID: ' || user_record.user_id || ', Name: ' || user_record.user_name || ', Units Consumed: ' || user_record.unit_consumed || ', Total Bill: ' || total_bill);
    END LOOP;
    CLOSE user_cursor;
END;
/