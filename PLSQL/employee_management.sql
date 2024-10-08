SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE BODY employee_pkg IS

    FUNCTION get_salary(emp_id NUMBER) RETURN NUMBER IS
        emp_salary NUMBER;
    BEGIN
        SELECT salary INTO emp_salary FROM employees WHERE employee_id = emp_id;
        RETURN emp_salary;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
    END get_salary;

    PROCEDURE add_employee(emp_id NUMBER, emp_name VARCHAR2, emp_position VARCHAR2, emp_salary NUMBER) IS
    BEGIN
        INSERT INTO employees (employee_id, name, position, salary)
        VALUES (emp_id, emp_name, emp_position, emp_salary);
    END add_employee;

    PROCEDURE delete_employee(emp_id NUMBER) IS
    BEGIN
        DELETE FROM employees WHERE employee_id = emp_id;
    END delete_employee;

    PROCEDURE list_employees IS
    BEGIN
        FOR emp IN (SELECT * FROM employees) LOOP
            DBMS_OUTPUT.PUT_LINE('ID: ' || emp.employee_id || ', Name: ' || emp.name || ', Position: ' || emp.position || ', Salary: ' || emp.salary);
        END LOOP;
    END list_employees;

END employee_pkg;
/