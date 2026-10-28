CREATE OR REPLACE FUNCTION count_students(
    dept_name IN VARCHAR2
)
RETURN NUMBER
AS
    total NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total
    FROM Student
    WHERE department = dept_name;

    RETURN total;
END;
/
SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'Number of students: ' || count_students('CSE')
    );
END;
/
