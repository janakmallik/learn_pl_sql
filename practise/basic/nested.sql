SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT x NUMBER PROMPT "enter a number: ";

DECLARE
    a NUMBER;
    b NUMBER := 0;

BEGIN
    a := &x;

    BEGIN
        b := mod(a, 3);
    END;

    IF b = 0 THEN
        DBMS_OUTPUT.PUT_LINE('divisible by 3');
    ELSE
        DBMS_OUTPUT.PUT_LINE('not divisible by 3');
    END IF;
END;
/
