CREATE TABLE Railway (
    -- Create the Railway table
    CREATE TABLE Railway (
        TrainNo NUMBER PRIMARY KEY,
        TName VARCHAR2(15),
        TDate DATE,
        Destination VARCHAR2(15),
        Seats NUMBER
    );

    -- Create the Reservation table
    CREATE TABLE Reservation (
        ResID NUMBER PRIMARY KEY,
        TrainNo NUMBER,
        PassengerName VARCHAR2(15),
        SeatNo NUMBER,
        FOREIGN KEY (TrainNo) REFERENCES Railway(TrainNo)
    );

    -- Create the TrainNo_seq sequence
    CREATE SEQUENCE TrainNo_seq
    START WITH 1
    INCREMENT BY 1;

    -- Create the ResID_seq sequence
    CREATE SEQUENCE ResID_seq
    START WITH 1
    INCREMENT BY 1;

    -- Create the MakeReservation procedure
    CREATE OR REPLACE PROCEDURE MakeReservation(
        p_TrainNo IN NUMBER,
        p_PassengerName IN VARCHAR2,
        p_SeatNo IN NUMBER
    ) AS
    BEGIN
        -- Insert the reservation into the Reservation table
        INSERT INTO Reservation (ResID, TrainNo, PassengerName, SeatNo)
        VALUES (ResID_seq.NEXTVAL, p_TrainNo, p_PassengerName, p_SeatNo);
        
        -- Update the Seats count in the Railway table
        UPDATE Railway
        SET Seats = Seats - 1
        WHERE TrainNo = p_TrainNo;
        
        -- Commit the transaction
        COMMIT;
        
        -- Print a success message
        DBMS_OUTPUT.PUT_LINE('Reservation made successfully.');
    EXCEPTION
        WHEN OTHERS THEN
            -- Print an error message
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
            ROLLBACK;
    END;
    /

    -- Create the CancelReservation procedure
    CREATE OR REPLACE PROCEDURE CancelReservation(
        p_ResID IN NUMBER
    ) AS
        v_TrainNo NUMBER;
    BEGIN
        -- Get the TrainNo associated with the reservation
        SELECT TrainNo INTO v_TrainNo
        FROM Reservation
        WHERE ResID = p_ResID;
        
        -- Delete the reservation from the Reservation table
        DELETE FROM Reservation
        WHERE ResID = p_ResID;
        
        -- Update the Seats count in the Railway table
        UPDATE Railway
        SET Seats = Seats + 1
        WHERE TrainNo = v_TrainNo;
        
        -- Commit the transaction
        COMMIT;
        
        -- Print a success message
        DBMS_OUTPUT.PUT_LINE('Reservation canceled successfully.');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- Print an error message
            DBMS_OUTPUT.PUT_LINE('Reservation not found.');
            ROLLBACK;
        WHEN OTHERS THEN
            -- Print an error message
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
            ROLLBACK;
    END;
    /

    -- Enable server output
    SET SERVEROUTPUT ON;

    -- Menu-driven code
    DECLARE
        v_Choice NUMBER;
        v_TrainNo NUMBER;
        v_PassengerName VARCHAR2(15);
        v_SeatNo NUMBER;
    BEGIN
        LOOP
            -- Display the menu
            DBMS_OUTPUT.PUT_LINE('Menu:');
            DBMS_OUTPUT.PUT_LINE('1. Make Reservation');
            DBMS_OUTPUT.PUT_LINE('2. Cancel Reservation');
            DBMS_OUTPUT.PUT_LINE('3. Exit');
            
            -- Get the user's choice
            v_Choice := &choice;
            
            -- Process the user's choice
            CASE v_Choice
                WHEN 1 THEN
                    -- Get the input for making a reservation
                    v_TrainNo := &train_no;
                    v_PassengerName := '&passenger_name';
                    v_SeatNo := &seat_no;
                    
                    -- Call the MakeReservation procedure
                    MakeReservation(p_TrainNo => v_TrainNo, p_PassengerName => v_PassengerName, p_SeatNo => v_SeatNo);
                WHEN 2 THEN
                    -- Get the input for canceling a reservation
                    v_ResID := &res_id;
                    
                    -- Call the CancelReservation procedure
                    CancelReservation(p_ResID => v_ResID);
                WHEN 3 THEN
                    -- Exit the loop
                    EXIT;
                ELSE
                    -- Invalid choice
                    DBMS_OUTPUT.PUT_LINE('Invalid choice. Please try again.');
            END CASE;
        END LOOP;
    END;
    /