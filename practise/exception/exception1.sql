SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- exception
-- user defined

DECLARE
    pt_age patient.age%TYPE := &x;
    pre_age patient.age%TYPE;

    age_excp EXCEPTION;

BEGIN
    SELECT age into pre_age FROM patient WHERE pid = 6;
    UPDATE patient SET age = pt_age WHERE pid = 6;

    IF pt_age <= 0 or pt_age >= 180 THEN
        RAISE age_excp;
    END IF;

    DBMS_OUTPUT.PUT_LINE('print check..');

    EXCEPTION
        WHEN age_excp THEN
            DBMS_OUTPUT.PUT_LINE('age data seems invalid..!');
            UPDATE patient SET age = pre_age WHERE pid = 6;

        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('there is some errors...!');
END;
/

SELECT * FROM patient;
