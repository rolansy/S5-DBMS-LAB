CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    name VARCHAR2(20),
    position VARCHAR2(20),
    salary NUMBER
);

drop table employees;

CREATE OR REPLACE PACKAGE employee_pkg IS
    FUNCTION get_salary(emp_id NUMBER) RETURN NUMBER;
    PROCEDURE add_employee(emp_id NUMBER, emp_name VARCHAR2, emp_position VARCHAR2, emp_salary NUMBER);
    PROCEDURE delete_employee(emp_id NUMBER);
    PROCEDURE list_employees;
END employee_pkg;
/


PROCEDURE add_employee(emp_id NUMBER, emp_name VARCHAR2, emp_position VARCHAR2, emp_salary NUMBER) IS
BEGIN
    INSERT INTO employees (employee_id, name, position, salary)
    VALUES (emp_id, emp_name, emp_position, emp_salary);
END add_employee;


employee_pkg.add_employee(B1, 'Paulu', 'Manager', 50000);

SET SERVEROUTPUT ON;

BEGIN
    employee_pkg.add_employee(1, 'Paulu', 'Manager', 50000);
END;
/

BEGIN
    employee_pkg.add_employee(2, 'Sreeku', 'Developer', 40000);
END;
/
BEGIN
    employee_pkg.add_employee(3, 'Malavika', 'Tester', 30000);
END;
/

BEGIN
    employee_pkg.list_employees;
END;
/

DECLARE
    salary NUMBER;
BEGIN
    salary := employee_pkg.get_salary(3);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || salary);
END;
/

BEGIN
    employee_pkg.delete_employee(3);
END;
/

drop PACKAGE employee_pkg;

