SET SERVEROUTPUT ON

DECLARE
    balance Number(10);


    PROCEDURE categorize_customer (CID IN NUMBER, bal IN NUMBER) IS
    BEGIN
        
        IF bal <= 10000 THEN
            update customer_balance set Category = 'Silver' where CID = categorize_customer.CID;
        ELSIF bal <= 50000 THEN
            update customer_balance set Category= 'Gold' where CID = categorize_customer.CID;
        ELSE
            update customer_balance set Category= 'Platinum' where CID = categorize_customer.CID;
        END IF;
    END;
BEGIN
    FOR customer_rec IN (SELECT CID, bal FROM customer_balance) LOOP
        categorize_customer(customer_rec.CID, customer_rec.bal);
    END LOOP;

    FOR customer_rec IN (SELECT CID, bal, Category FROM customer_balance) loop
        DBMS_OUTPUT.PUT_LINE('CID: ' || customer_rec.CID ||', bal: '||customer_rec.bal ||', Category: ' || customer_rec.Category);
    END LOOP;

END;
/

