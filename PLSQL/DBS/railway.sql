CREATE TABLE Railway (
    TrainNo NUMBER PRIMARY KEY,
    TName VARCHAR2(15),
    TDate DATE,
    Destination VARCHAR2(15),
    Seats NUMBER
);

CREATE TABLE Reservation (
    ResID NUMBER PRIMARY KEY,
    TrainNo NUMBER,
    PassengerName VARCHAR2(15),
    SeatNo NUMBER,
    FOREIGN KEY (TrainNo) REFERENCES Railway(TrainNo)
);

CREATE SEQUENCE TrainNo_seq
START WITH 1
INCREMENT BY 1;


CREATE SEQUENCE ResID_seq
START WITH 1
INCREMENT BY 1;

Select * from Railway;
Select * from Reservation;

INSERT INTO Railway (TName, TDate, Destination, Seats) VALUES ('Nelly', TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'Cuba', 100);
INSERT INTO Railway (TName, TDate, Destination, Seats) VALUES ('Nirvana', TO_DATE('2023-10-02', 'YYYY-MM-DD'), 'Doha', 150);





SET SERVEROUTPUT ON;

BEGIN
    MakeReservation(p_TrainNo => 27, p_PassengerName => 'John Doe', p_SeatNo => 1);
END;
/

BEGIN
    MakeReservation(p_TrainNo => 28, p_PassengerName => 'Jane Doe', p_SeatNo => 2);
END;
/
BEGIN
    MakeReservation(p_TrainNo => 27, p_PassengerName => 'Jacob Thomas', p_SeatNo => 5);
END;
/

BEGIN
    CancelReservation(p_ResID => 7);
END;
/