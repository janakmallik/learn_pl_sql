SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    res NUMBER;

BEGIN
    res := pkg_arithmetic.add_num(10,15);
    DBMS_OUTPUT.PUT_LINE(res);

    pkg_arithmetic.subs_num(15,10);
END;
/

