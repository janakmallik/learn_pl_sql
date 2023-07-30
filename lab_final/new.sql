



create or replace view myview
(view_id, view_name, view_cgpa) as
select S.id, S.name, R.cgpa
from student S, student_result R where S.id = R.id;

select * from myview;

commit;

SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
	A varchar2(10) := &EnterMyName;
	B varchar2(10) := &EnterAddress;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE(A || ' ' || B);
END;
/

-- inserting new rows
DECLARE
	NUM money.id%TYPE := 0;

BEGIN
	select count(id) into NUM from money;

	FOR i IN 1..5 LOOP
		NUM := NUM +1;
		insert into money values (NUM, 'D', 300);
	END LOOP;
END;
/

-- while loop
DECLARE
	NUM int := 0; 

BEGIN
	WHILE NUM < 5
	LOOP
		NUM := NUM + 1;
		DBMS_OUTPUT.PUT_LINE(NUM);
		
	END LOOP;
END;
/

-- 
DECLARE
	NUM int := 0; 

BEGIN
	LOOP
		NUM := NUM + 1;
		DBMS_OUTPUT.PUT_LINE(NUM);
		EXIT WHEN NUM = 5; -- here
        -- IF NUM = 5 THEN
		-- 	EXIT;
		-- END IF;
	END LOOP;
END;
/

-- case conditions
DECLARE
	NUM money.taka%TYPE; 

BEGIN
	select taka into NUM from money where id = 3;

	CASE  MOD(NUM, 3)
		WHEN 0 THEN
			DBMS_OUTPUT.PUT_LINE('ZERO');
		WHEN 1 THEN
			DBMS_OUTPUT.PUT_LINE('ONE');
		ELSE
			DBMS_OUTPUT.PUT_LINE('TWO');
		
	END CASE;

END;
/

-- 
DECLARE
	
	NUM money.taka%TYPE; 
BEGIN
	select taka into NUM from money where id = 3;
	CASE 
		WHEN MOD(NUM, 3) = 0 THEN
			DBMS_OUTPUT.PUT_LINE('ZERO');
		WHEN MOD(NUM, 3) = 1 THEN
			DBMS_OUTPUT.PUT_LINE('ONE');
		ELSE
			DBMS_OUTPUT.PUT_LINE('TWO');
		
	END CASE;

END;
/


-- 
DECLARE
	--NUM int := 9;
	NUM money.taka%TYPE; 
BEGIN
	select taka into NUM from money where id = 1;
	IF MOD(NUM,3) = 0 THEN
		DBMS_OUTPUT.PUT_LINE('ZERO');
	ELSIF MOD(NUM, 3) = 1 THEN
		DBMS_OUTPUT.PUT_LINE('ONE');
	ELSE
		DBMS_OUTPUT.PUT_LINE('TWO');
	END IF;

END;
/

