-- FUNCTION

SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE or REPLACE FUNCTION average_age2
RETURN NUMBER
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
    -- DBMS_OUTPUT.PUT_LINE(b);
    RETURN b;

end average_age2;
/

-- BEGIN
--     average_age2;
-- END;
-- /

-- connect to main.sql