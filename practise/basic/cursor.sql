SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
    a patient.pid%TYPE;
    b patient.age%TYPE;
    c patient.gender%TYPE;

BEGIN
    FOR i IN (SELECT pid, age, gender FROM patient) LOOP
    -- FOR i IN (SELECT * FROM patient) LOOP
        a := i.pid;
        b := i.age;
        c := i.gender;

        -- DBMS_OUTPUT.PUT_LINE(a || ' ' || b || ' ' || c);

        IF b >= 60 THEN
            DBMS_OUTPUT.PUT_LINE(a || ' ' || c || ' --> senior');
        ELSIF b <= 18 THEN
            DBMS_OUTPUT.PUT_LINE(a || ' ' || c || ' --> junior');
        ELSE
            DBMS_OUTPUT.PUT_LINE(a || ' ' || c || ' --> regular');
        END IF;

    END LOOP;
END;
/


