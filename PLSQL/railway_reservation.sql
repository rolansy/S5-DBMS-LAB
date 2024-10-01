

CREATE OR REPLACE TRIGGER TrainNo_trigger
BEFORE INSERT ON  Railway
FOR EACH ROW
BEGIN
    SELECT TrainNo_seq.NEXTVAL INTO :NEW.TrainNo FROM dual;
END;
/

CREATE OR REPLACE TRIGGER ResID_trigger
BEFORE INSERT ON Reservation
FOR EACH ROW
BEGIN
    SELECT ResID_seq.NEXTVAL INTO :NEW.ResID FROM dual;
END;
/

CREATE OR REPLACE PROCEDURE MakeReservation (
    p_TrainNo IN NUMBER,
    p_PassengerName IN VARCHAR2,
    p_SeatNo IN NUMBER
) AS
BEGIN
    INSERT INTO Reservation (TrainNo, PassengerName, SeatNo)
    VALUES (p_TrainNo, p_PassengerName, p_SeatNo);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Reservation made successfully for ' || p_PassengerName);
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

CREATE OR REPLACE PROCEDURE CancelReservation (
    p_ResID IN NUMBER
) AS
BEGIN
    DELETE FROM Reservation WHERE ResID = p_ResID;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Reservation cancelled successfully for ResID ' || p_ResID);
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/