CREATE OR REPLACE TRIGGER student_avg_trigger
BEFORE INSERT ON student_avg
FOR EACH ROW
BEGIN
    :NEW.Total := :NEW.subj1 + :NEW.subj2 + :NEW.subj3;
    :NEW.Avg := :NEW.Total / 3;
END;
/