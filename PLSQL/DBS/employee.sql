CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    position VARCHAR2(100),
    salary NUMBER
);


CREATE OR REPLACE PACKAGE employee_pkg IS
    FUNCTION get_salary(emp_id NUMBER) RETURN NUMBER;
    PROCEDURE add_employee(emp_id NUMBER, emp_name VARCHAR2, emp_position VARCHAR2, emp_salary NUMBER);
    PROCEDURE delete_employee(emp_id NUMBER);
    PROCEDURE list_employees;
END employee_pkg;
/