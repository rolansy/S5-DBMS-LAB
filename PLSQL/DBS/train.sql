CREATE  TABLE Train (
    TrainNo NUMBER PRIMARY KEY,
    TName VARCHAR(15),
    TDate DATE,
    Destination VARCHAR(15),
    Seats NUMBER
);


CREATE SEQUENCE TrainNo_seq
START WITH 1
INCREMENT BY 1;

INSERT INTO Train (TName, TDate, Destination, Seats) VALUES ('Express', TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'Delhi', 100);
COMMIT;
INSERT INTO Train (TName, TDate, Destination, Seats) VALUES ('Nirvana', TO_DATE('2023-10-02', 'YYYY-MM-DD'), 'Doha', 150);


INSERT INTO Train (TName, TDate, Destination, Seats) VALUES ('Vazha', TO_DATE('2023-10-02', 'YYYY-MM-DD'), 'Shimla', 150);
ROLLBACK;


SELECT * FROM Train;