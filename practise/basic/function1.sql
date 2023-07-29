SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION new_func(x IN INT)
RETURN INT
IS

BEGIN
    DBMS_OUTPUT.PUT_LINE('hello cse');
    RETURN 5 * x;
END new_func;
/

DECLARE
    a INT;
BEGIN
    a := 5;
    a := new_func(a);
    DBMS_OUTPUT.PUT_LINE(a);
END;
/


-- to call from terminal
-- select new_func(5) from dual;



 