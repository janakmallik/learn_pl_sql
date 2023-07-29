-- PROCEDURE

SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE or REPLACE PROCEDURE average_age
IS

    a patient.age%TYPE;
    b FLOAT;
    z int;

BEGIN
    b := 0;
    a := 0;
    z := 0;

    for i in (SELECT * FROM patient) LOOP
        a := a + i.age;
    end LOOP;

    SELECT COUNT(*) INTO z FROM patient;
    
    b := a / z;
    DBMS_OUTPUT.PUT_LINE(b);

end average_age;
/

BEGIN
    average_age;
END;
/

-- connect to main.sql