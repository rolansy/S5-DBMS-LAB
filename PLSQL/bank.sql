SET SERVEROUTPUT ON
ACCEPT acc NUMBER PROMPT 'Enter Account Number : ';

DECLARE
    balance Number(10);
    min_bal Number(10);
    debit NUMBER;
    credit NUMBER;

BEGIN
    
    debit := &debit;
    UPDATE accounts SET bal=bal-debit WHERE acc_num=&acc;
    credit := &credit;
    UPDATE accounts SET bal=bal+credit WHERE acc_num=&acc;
    SELECT bal INTO balance FROM accounts where acc_num=&acc;
    DBMS_OUTPUT.PUT_LINE('Balance : '||balance);
    if balance<500 then
        dbms_output.put_line('Warning! Maintain Minimum Balance! ');
    END if;
END;
/

