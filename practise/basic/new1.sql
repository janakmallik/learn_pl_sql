SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
    A patient.pid%TYPE;
    B patient.age%TYPE;

BEGIN
    SELECT pid, age into A, B from patient;
    DBMS_OUTPUT.PUT_LINE(A ||' '|| B);
END;
/