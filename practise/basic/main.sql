DECLARE
    a NUMBER;

BEGIN
    -- display_msg;
    -- average_age;
    -- for procedure

    -- for function
    a := average_age2;
    DBMS_OUTPUT.PUT_LINE('avg age: ' || a);
END;
/