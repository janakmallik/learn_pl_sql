SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT X NUMBER PROMPT "Enter Last 3 digits of ID = "
ACCEPT Y CHAR PROMPT "ENTER NAME = "

DECLARE
	A NUMBER;
	B int;

BEGIN
	B := 0;
	BEGIN
		A := &X;
		B := MOD(A, 2);
	END;
	
	IF B = 0 THEN
		DBMS_OUTPUT.PUT_LINE('EVEN');
	ELSE
		DBMS_OUTPUT.PUT_LINE('ODD');
	END IF;
END;
/

DECLARE
	C VARCHAR2(10);
BEGIN
	C := '&Y';
	DBMS_OUTPUT.PUT_LINE(C);
END;
/

----------------------------------------
-------------------------------------
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE mytest
IS

A money.id%TYPE;
B money.taka%TYPE;
C money.taka%TYPE;

BEGIN
	C := 0;
	FOR R IN (SELECT * FROM money) LOOP
		A := R.id;
		B := R.taka;
		C := C + B;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(C);
END mytest;
/

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION mytest
RETURN money.taka%TYPE
IS

A money.id%TYPE;
B money.taka%TYPE;
C money.taka%TYPE;

BEGIN
	C := 0;
	FOR R IN (SELECT * FROM money) LOOP
		A := R.id;
		B := R.taka;
		C := C + B;
	END LOOP;
	return C;
END mytest;
/

SET SERVEROUTPUT ON;

-- NUM := test1(10);
CREATE OR REPLACE FUNCTION test1(A IN money.id%TYPE)
RETURN number
IS

BEGIN
	DBMS_OUTPUT.PUT_LINE(A);
	return A+10;
END test1;
/

-------------------------------------------
-----------------------------------------

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION test1(A IN money.id%TYPE, B OUT money.id%TYPE)
RETURN number
IS

BEGIN
	DBMS_OUTPUT.PUT_LINE(A);
	B := 10;
	return A+10;
END test1;
/

DECLARE
	NUM number;
	NUMb number;
BEGIN
	NUM := test1(2, NUMB);
	DBMS_OUTPUT.PUT_LINE(NUM);
	DBMS_OUTPUT.PUT_LINE(NUMB);
END;
/
-------------------------------

-----------------------------------

