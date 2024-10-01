CREATE OR REPLACE TRIGGER std_honors_trigger
BEFORE INSERT OR UPDATE OR DELETE ON std_honors
FOR EACH ROW
DECLARE
    v_message VARCHAR2(50);
BEGIN
    IF DELETING THEN
        v_message := 'Deleting ' || :OLD.name;
    ELSIF INSERTING THEN
        v_message := 'Inserting ' || :NEW.name;
    ELSIF UPDATING THEN
        IF :NEW.name == :OLD.name THEN
            v_message := 'Updated  ' || :NEW.name;
        ELSE
            v_message := 'Inserting ' || :NEW.name;
        END IF;
    END IF;
    DBMS_OUTPUT.PUT_LINE(v_message);
END;
/