-- CLEAR SCREEN;
SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
    C VARCHAR2(20) := 'ur name is &name';
    D VARCHAR2(20) := 'ur age is &age';

BEGIN

    -- DBMS_OUTPUT.PUT_LINE(A+B);

    DBMS_OUTPUT.PUT_LINE(C || ',' || D); 
END;
/


    -- A int:= &x;
    -- B int:= &v;

/*

DROP TABLE studentz;

CREATE TABLE studentz(id NUMBER, name VARCHAR2(20), age NUMBER);

INSERT INTO studentz VALUES(1,'A',10);
INSERT INTO studentz VALUES(2,'A',10);
INSERT INTO studentz VALUES(3,'A',10);

COMMIT;
SELECT * FROM studentz;

DECLARE
    n studentz.id%TYPE :=0;

BEGIN
    SELECT COUNT(id) INTO n FROM studentz;

    FOR i in 1..5 LOOP
        n:=n+1;
        INSERT into studentz VALUES(n,'L',22);
        END LOOP;
END;
/

SELECT * FROM studentz;


DECLARE
    a int:=5;

BEGIN
    FOR i in REVERSE 1..a LOOP
    DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/

DECLARE
    m INT := 5;
    n INT := 0;
    i INT := 0;

BEGIN
    LOOP
        n := n + 1;
        DBMS_OUTPUT.PUT_LINE (n);
        EXIT WHEN n = 5;
    END LOOP;
    n :=0;
    DBMS_OUTPUT.PUT_LINE (n);
END;
/

DECLARE
    n INT := 0;

BEGIN
    WHILE n < 5 LOOP
        n := n + 1;
        DBMS_OUTPUT.PUT_LINE (n);
    END LOOP;
END;
/

DECLARE 
   a number(2) := 10; 
BEGIN 
   WHILE a < 20 LOOP 
      DBMS_OUTPUT.PUT_LINE('value of a: ' || a); 
      a := a + 1; 
   END LOOP; 
END; 
/

*/

