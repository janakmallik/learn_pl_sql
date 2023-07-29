-- connected to function3.sql

DECLARE
    a NUMBER;
    b NUMBER;

BEGIN
    a := new_func(5, b);

    DBMS_OUTPUT.PUT_LINE(a);
    DBMS_OUTPUT.PUT_LINE(b);

END;
/