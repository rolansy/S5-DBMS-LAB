CREATE OR REPLACE TRIGGER TrainNo_trigger
BEFORE INSERT ON Train
FOR EACH ROW
BEGIN
    SELECT TrainNo_seq.NEXTVAL INTO :NEW.TrainNo FROM dual;
END;
/