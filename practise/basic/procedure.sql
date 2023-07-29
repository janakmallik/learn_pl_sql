-- to get the function run in main, execute this file first
-- Procedure created.

SET VERIFY OFF;
SET SERVEROUTPUT ON;

CREATE or REPLACE PROCEDURE clac_sum(x in int, y in int, total out int)
IS

BEGIN
    total := x+y;
END clac_sum;
/

DECLARE
    res int;

BEGIN
    clac_sum(4, 2, res);

    DBMS_OUTPUT.PUT_LINE(res);
END;
/

/*
CREATE or REPLACE PROCEDURE display_msg(a in VARCHAR2)
IS
-- datatype could be like patient.gender%TYPE

BEGIN
DBMS_OUTPUT.PUT_LINE(a);
END display_msg;
/

DECLARE
    B VARCHAR2(20);

BEGIN
    B := 'janak';
    display_msg(B);
    
END;
/

EXECUTE display_msg('LAB');

*/

/*
BEGIN
DBMS_OUTPUT.PUT_LINE('hello, batch cse 44');
END display_msg;
/


BEGIN
    display_msg;
    
END;
/

EXECUTE display_msg;

*/