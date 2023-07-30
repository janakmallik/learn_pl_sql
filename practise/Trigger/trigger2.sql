
SET SERVEROUTPUT ON;
SET VERIFY OFF;


CREATE or REPLACE TRIGGER secnd_trig
BEFORE INSERT
ON patient

BEGIN
    DBMS_OUTPUT.PUT_LINE('----------------------------');
    DBMS_OUTPUT.PUT_LINE('before row inseted on patient table');
END;
/

CREATE or REPLACE TRIGGER frst_trig
AFTER INSERT
ON patient

BEGIN
    DBMS_OUTPUT.PUT_LINE('----------------------------');
    DBMS_OUTPUT.PUT_LINE('after row inseted on patient table');
END;
/


-- INSERT INTO Patient VALUES (7, 'mallik', 23, 'Male', '123 Main St', '1234324890');

CREATE or REPLACE TRIGGER thrd_trig
BEFORE DELETE
ON patient

BEGIN
    DBMS_OUTPUT.PUT_LINE('----------------------------');
    DBMS_OUTPUT.PUT_LINE('before row delete on patient table');
END;
/

CREATE or REPLACE TRIGGER frth_trig
AFTER DELETE
ON patient

BEGIN
    DBMS_OUTPUT.PUT_LINE('----------------------------');
    DBMS_OUTPUT.PUT_LINE('after row delete on patient table');
END;
/


-- INSERT INTO Patient VALUES (7, 'mallik', 23, 'Male', '123 Main St', '1234324890');