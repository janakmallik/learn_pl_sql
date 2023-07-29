SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- exception
-- system defined
-- user defined

DECLARE
    pt_age patient.age%TYPE;
    pt_age2 patient.age%TYPE;
    z NUMBER := 0;
    res FLOAT;



BEGIN
    -- exception 01
    --SELECT age INTO pt_age FROM patient;

    -- exception 02
    SELECT age INTO pt_age2 FROM patient WHERE pid = 2;
    res := pt_age2 / z;
    DBMS_OUTPUT.PUT_LINE('result is = ' || res);
    
    EXCEPTION
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('multiple rows selected.!!');
        
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('no data found..!');
        
        WHEN ZERO_DIVIDE THEN
            DBMS_OUTPUT.PUT_LINE('cant be devided by zero..!!');

        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('there is some errors...!');
END;
/



        -- WHEN ZERO_DIVIDE THEN
            -- DBMS_OUTPUT.PUT_LINE('cant be devided by zero..!!');
            -- z := &x;
            -- res := pt_age2 / z;
            -- DBMS_OUTPUT.PUT_LINE('result is = ' || res);