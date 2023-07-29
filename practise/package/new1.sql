


-- package specification
CREATE or REPLACE PACKAGE pkg_arithmetic AS

    FUNCTION add_num(num1 in NUMBER, num2 in NUMBER)
    RETURN NUMBER;

    PROCEDURE subs_num(num1 in NUMBER, num2 in NUMBER);
END;
/


-- package body
CREATE or REPLACE PACKAGE BODY pkg_arithmetic AS

    -- add_num function
    FUNCTION add_num(num1 in NUMBER, num2 in NUMBER)
    RETURN NUMBER
    IS

    BEGIN
        RETURN num1 + num2;
    END add_num;

    -- a private procedure
    -- only available to call inside package body
    PROCEDURE prvt_proc
    IS

    BEGIN
        DBMS_OUTPUT.PUT_LINE('this is from private');
    END prvt_proc;

    -- subs_num procedure
    PROCEDURE subs_num(num1 in NUMBER, num2 in NUMBER)
    IS

    BEGIN
        DBMS_OUTPUT.PUT_LINE('substraction = ' || (num1 - num2));
        prvt_proc;
    END subs_num;
    
END;
/    



