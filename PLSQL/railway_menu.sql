-- Enable server output
SET SERVEROUTPUT ON;

-- Menu-driven code
DECLARE
    v_Choice NUMBER;
    v_TrainNo NUMBER;
    v_PassengerName VARCHAR2(15);
    v_SeatNo NUMBER;
BEGIN
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
END;
/