SET SERVEROUTPUT ON;

create or REPLACE PROCEDURE clac_sum(x in out int)
IS

BEGIN
    DBMS_OUTPUT.PUT_LINE(x);
    x := 5 * x;
END clac_sum;
/

DECLARE
    a int;

BEGIN
    a := 2;
    clac_sum(a);

    DBMS_OUTPUT.PUT_LINE(a);
END;
/

