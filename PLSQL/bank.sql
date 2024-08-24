set SERVEROUTPUT on;
-- accept acc NUMBER prompt 'ENTER CHOICE : ';


DECLARE
    acc NUMBER(5);
    balance Number(10):=0;
    min_bal Number(10):=500;
    debit NUMBER:=0;
    credit NUMBER:=0;
    choice NUMBER:=0;

BEGIN
dbms_output.put_line('HELLO !');
    WHILE choice<6 LOOP
        

        dbms_output.put_line('Enter Debit Amount : ');
        dbms_output.put_line('1 : Debit');
        dbms_output.put_line('2 : Credit');
        dbms_output.put_line('3 : Show Balance');
        dbms_output.put_line('4 : Enter Account Number');
        dbms_output.put_line('5 : Create Account');
        dbms_output.put_line('6 : Exit');
        dbms_output.put_line('Enter your choice : ');
        choice := &choice;

        IF choice = 1 THEN
            dbms_output.put_line('Enter Debit Amount : ');
            debit := &debit;
            UPDATE account SET balance=balance-debit WHERE acc_num=acc;
        ELSIF choice = 2 THEN
            dbms_output.put_line('Enter Credit Amount : ');
            credit := &credit;
            UPDATE account SET balance=balance+credit WHERE acc_num=acc;
        ELSIF choice = 3 THEN
            show_balance(acc);
            SELECT bal INTO balance FROM accounts where acc_num=acc;
            DBMS_OUTPUT.PUT_LINE('Balance : '||balance);
        ELSIF choice = 4 THEN
            dbms_output.put_line('Enter Account Number : ');
            acc := &acc;
            Select bal into balance from accounts where acc_num=acc;
            if balance<min_bal then
                dbms_output.put_line('Minimum Balance Reached');
                EXIT;
            end if;
        ELSIF choice = 5 THEN
            dbms_output.put_line('Enter Account Number : ');
            acc := &acc;
            execute create_account(acc);
        ELSIF choice = 6 THEN
            dbms_output.put_line('Exiting');
            EXIT;
        ELSE
            dbms_output.put_line('Invalid Choice');
        END IF;
    END LOOP;
    
END;
/

