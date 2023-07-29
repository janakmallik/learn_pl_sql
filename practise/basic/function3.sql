SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION new_func(x in NUMBER, y out NUMBER)
RETURN NUMBER
IS

BEGIN
    y := 50;
    DBMS_OUTPUT.PUT_LINE(x);
    RETURN x * 5;
END new_func;
/

-- connected to mainfunc.sql


