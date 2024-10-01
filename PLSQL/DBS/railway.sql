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

-- Create sequence for ResID
CREATE SEQUENCE ResID_seq
START WITH 1
INCREMENT BY 1;