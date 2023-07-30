
SET SERVEROUTPUT ON;
SET VERIFY OFF;


CREATE or REPLACE TRIGGER new_trig
AFTER INSERT or UPDATE
OF age
ON patient
FOR EACH ROW

BEGIN
    DBMS_OUTPUT.PUT_LINE('---------------------------------------');
    DBMS_OUTPUT.PUT_LINE('row inseted or updated on patient table');
END;
/


-- INSERT INTO Patient VALUES (7, 'mallik', 23, 'Male', '123 Main St', '1234324890');

-- UPDATE patient set age = 23, name = 'janak toy' where id = 6;

-- UPDATE patient set age = 118 where age = 18;

