
SET SERVEROUTPUT ON;
SET VERIFY OFF;


CREATE or REPLACE TRIGGER new_trig
AFTER INSERT
ON patient

BEGIN
    DBMS_OUTPUT.PUT_LINE('row inseted on patient table');
END;
/


-- INSERT INTO Patient VALUES (7, 'mallik', 23, 'Male', '123 Main St', '1234324890');