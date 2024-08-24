set SERVEROUTPUT on;

DECLARE
num number:=1;
begin
    for num in 1..10
    loop
        
    dbms_output.put_line('HELLO !');
    end loop;
end;
/